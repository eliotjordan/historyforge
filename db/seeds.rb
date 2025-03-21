# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

if Vocabulary.count == 0
  [
    ['Language Spoken', 'language'],
    ['Place of Birth', 'pob'],
    ['Relation to Head', 'relation_to_head']
  ].each do |item|
    file = File.open(Rails.root.join('db', "#{item[0]}.csv"))
    vocabulary = Vocabulary.find_or_create_by(name: item[0], machine_name: item[1])
    ImportTerms.new(file, vocabulary).run
  end
end

Setting.add 'county', value: ENV['APP_PLACE_COUNTY'] || 'Tompkins', group: 'Census Record Defaults'
Setting.add 'city', value: ENV['APP_PLACE_CITY'] || 'Ithaca', group: 'Census Record Defaults'
Setting.add 'state', value: ENV['APP_PLACE_STATE'] || 'NY', group: 'Census Record Defaults'
Setting.add 'pob', value: 'New York', group: 'Census Record Defaults'
Setting.add 'organization', value: ENV['APP_ORG_NAME'] || 'The History Center in Tompkins County', group: 'Sponsor'
Setting.add 'url', value: ENV['APP_ORG_URL'] || 'https://thehistorycenter.net', group: 'Sponsor'
Setting.add 'contact_email', value: ENV['CONTACT_EMAIL'] || 'historyforge@thehistorycenter.net', group: 'Sponsor'
Setting.add 'mail_from', value: ENV['MAIL_FROM'] || 'historyforge@thehistorycenter.net', group: 'Sponsor'
Setting.add 'latitude', value: ENV['APP_LATITUDE'] || 42.4418353, type: 'number', group: 'Default Map Center'
Setting.add 'longitude', value: ENV['APP_LONGITUDE'] || -76.4987984, type: 'number', group: 'Default Map Center'
Setting.add 'google_api_key', value: ENV['GOOGLE_API_KEY'], group: 'API Keys'
Setting.add 'geocoding_key', value: ENV['GOOGLE_GEOCODING_KEY'], group: 'API Keys'
Setting.add 'recaptcha_site_key', value: "default", group: 'API Keys'
Setting.add 'recaptcha_secret_key', value: nil, group: 'API Keys'
Setting.add 'facebook_login_enabled', type: :boolean, value: ENV['FACEBOOK_LOGIN_ENABLED'] || '0', group: 'Authentication', name: 'Enable Facebook Authentication', hint: 'Allow users to signup with their Facebook account.'
Setting.add 'facebook_login_app_id', value: ENV['FACEBOOK_LOGIN_APP_ID'] || '',  group: 'Authentication'
Setting.add 'facebook_login_secret', value: ENV['FACEBOOK_LOGIN_SECRET'] || '', group: 'Authentication'
group = 'Announcement Banner'
Setting.add 'announcement_show', type: :boolean, value: '0', group:, name: 'Show announcement?', hint: 'Should we show the announcement banner on the home page?'
Setting.add 'announcement_text', type: :string, value: nil, group:, name: 'Announcement Text', hint: 'The text of the announcement.'
Setting.add 'announcement_url', type: :string, value: nil, group:, name: 'Announcement URL', hint: 'Go somewhere when you click on the announcement? Enter a URL starting with https://.'
Setting.add 'document_page_title', type: :string, value: 'Resources', group: 'Documents', name: 'Document Page Title', hint: 'Show up on the main menu and as the page title.'
Setting.add 'document_category_page', type: :boolean, value: false, group: 'Documents', name: 'Document Category Pages', hint: 'If true, then each category has its own page. If false, then all the documents and categories show up on on page in an accordion.'

CensusYears.each do |year|
  group = "#{year} US Census"
  Setting.add "enabled_private_#{year}", type: :boolean, value: Rails.env.test? ? '1' : '0', group: group, name: 'Enabled Private', hint: 'This census year is available to logged-in users for data entry.'
  Setting.add "enabled_public_#{year}", type: :boolean, value: Rails.env.test? ? '1' : '0', group: group, name: 'Enabled Public', hint: 'This census year is available to the public for search.'
  Setting.add "add_buildings_#{year}", type: :boolean, value: '1', group: group, name: 'Add Buildings', hint: 'Allows census taker to create a new building from address.'
end

Setting.add 'people_private',
            type: :boolean,
            value: '1',
            group: 'All People',
            name: 'Enabled Private',
            hint: 'Logged-in users can access the People pages. People records connect census records across multiple censuses.'
Setting.add 'people_public',
            type: :boolean,
            value: '1',
            group: 'All People',
            name: 'Enabled Public',
            hint: 'The people pages are available to the public for search.'
