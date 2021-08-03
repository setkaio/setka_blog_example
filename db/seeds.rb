# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  Post.create([
    {
      title: Faker::Lorem.sentence,
      body: <<-EOS
        <div class=\"stk-post stk-layout_4col_12670 stk-theme_44132\" data-ui-id=\"post\" data-reset-type=\"class\" data-editor-version=\"3.0.14\" data-stk=\"{&quot;images&quot;:[]}\" data-stk-css=\"stkgTT2P\" data-layout-type=\"limited\">\
        <p class=\"stk-reset\" data-ce-tag=\"paragraph\">#{Faker::Lorem.paragraphs.join(' ')}</p>\
        <p class=\"stk-theme_44132__color_44132_custom_color_1 stk-reset\" data-ce-tag=\"paragraph\">#{Faker::Lorem.paragraphs.join(' ')}</p>\
        <style data-stk-css=\"stkgTT2P\" class=\"\" media=\"all\">[data-stk-css=\"stkgTT2P\"]:not(#stk):not(#stk):not(style){background-color: rgba(255, 229, 49, 1.0)}</style>\
        </div>
      EOS
    }
  ])
end