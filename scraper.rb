#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en12 = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://en.wikipedia.org/wiki/12th_Cook_Islands_Parliament',
  xpath: '//table[.//td[contains(.,"Electorate")]]//td[2]//a[not(@class="new")]/@title',
  as_ids: true,
)

en13 = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://en.wikipedia.org/wiki/13th_Cook_Islands_Parliament',
  xpath: '//table[.//td[contains(.,"Electorate")]]//td[2]//a[not(@class="new")]/@title',
  as_ids: true,
)

en14 = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://en.wikipedia.org/wiki/14th_Cook_Islands_Parliament',
  xpath: '//table[.//td[contains(.,"Electorate")]]//td[2]//a[not(@class="new")]/@title',
  as_ids: true,
)

EveryPolitician::Wikidata.scrape_wikidata(ids: en12 | en13 | en14)
