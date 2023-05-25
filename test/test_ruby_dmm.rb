# frozen_string_literal: true

require "test_helper"

class TestRubyDmm < Minitest::Test
  def setup
    @floor_id = 43  # 動画
    @floor_id_author = 19 # コミック
  end 

  def test_that_it_has_a_version_number
    refute_nil ::RubyDmm::VERSION
  end

  def test_search_item
    puts __method__
    args = { site: "FANZA", keyword: "天使もえ", hits: 3 }
    result = test(:product, args)
    if result
      result[:items].each do |i|
        puts i[:title]
      end
    end
    assert true
  end

  def test_search_floor
    puts __method__
    result = test(:floor)
    if result
      result[:site].each do |site|
        site[:service].each do |service|
          puts "#{service[:name]}"
          service[:floor].each do |floor|
            puts "  #{floor[:name]} : #{floor[:id]}"
          end
        end
      end
    end
    assert true
  end

  def test_search_actress
    puts __method__
    args = { intial: "あ", hits: 3 }
    result = test(:actress, args)
    if result
      result[:actress].each do |a|
        puts a[:name]
      end
    end
    assert true
  end

  def test_search_genre
    puts __method__
    args = { floor_id: @floor_id, hits: 3 }
    result = test(:genre, args)
    if result
      result[:genre].each do |l|
        puts l[:name]
      end
    end
    assert true
  end

  def test_search_maker
    puts __method__
    args = { floor_id: @floor_id, hits: 3 }
    result = test(:maker, args)
    if result
      result[:maker].each do |m|
        puts m[:name]
      end
    end
    assert true
  end

  def test_search_series
    puts __method__
    args = { floor_id: @floor_id, hits: 3 }
    result = test(:series, args)
    if result
      result[:series].each do |l|
        puts l[:name]
      end
    end
    assert true
  end

  def test_search_author
    puts __method__
    args = { floor_id: @floor_id_author, hits: 3 }
    result = test(:author, args)
    if result
      result[:author].each do |d|
        puts d[:name]
      end
    end
    assert true
  end

  private

  def test(method, args = {})
    cli = RubyDmm.new
    response = cli.send(method, args)
    #puts response.body[:result]  if method == :maker
    return response.body[:result] if response.status.to_i == 200

    puts "Status : #{response.status} : #{response.body[:result][:message]}"
  end
end
