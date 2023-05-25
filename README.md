# RubyDmm

TODO: Delete this and the text below, and describe your gem

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ruby_dmm`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

TODO: Replace `ruby_dmm` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

    $ bundle add ruby_dmm

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install ruby_dmm

## Usage

```ruby
cli = RubyDmm.new(api_key: "YOUR_API_KEY", affiliate_id: "YOUR_AFFILIATE_ID")
response = cli.item(keyword: "杉原杏璃", category: 'idol')
response.body[:result][:items].map {|x| x[:title]}
=>
["Last Kiss ～杉原杏璃ファイナルイメージ 杉原杏璃",
 "東京アンリ 杉原杏璃",
 "となりのアンリ 杉原杏璃",
 "白珠杏蜜 杉原杏璃",
 "アンリ先生 杉原杏璃",
 "フェアリー・テール 杉原杏璃",
 "なまアンリ、ゆめアンリ 杉原杏璃",
 "アンリの日記 杉原杏璃",
 "必撮！まるごと☆杉原杏璃2",
 "杏乳 杉原杏璃",
 "ヤングマガジンDVD 透覗 See Through Mode 杉原杏璃",
 "杏limited 杉原杏璃",
 "亜細亜の恋 杉原杏璃",
 "夢の世界へ 杉原杏璃",
 "杏璃～夏ものがたり 杉原杏璃",
 "じーっとみつめて･･･ 杉原杏璃",
 "必撮！まるごと☆杉原杏璃",
 "ボクのアンリ 杉原杏璃",
 "アンブロシア ～美味しいアンリ 杉原杏璃",
 "みすど mis＊dol 杉原杏璃2",
 "杏Lover 杉原杏璃",
 "みすど mis＊dol 杉原杏璃",
 "本当にデカップ 杉原杏璃",
 "杏Sweet 杉原杏璃",
 "杏璃色 杉原杏璃",
 "「杏蜜」 ～An-mitsu～ 杉原杏璃"]
```

Refer to [DMM site](https://affiliate.dmm.com/api/) for API details.

Now the APIs for Item, Maker, Label, Series, Genre, Director and Actor are supported. As of May 12, 2023, Label and Series seem not working due to "DATABASE ERROR".

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dugabot0/ruby_dmm.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
