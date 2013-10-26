require 'spec_helper'

describe "StaticPages" do

  subject {page}

  # tests for Home page
  describe "Home page" do

    before {visit root_path}

  	# test for content in page
    it {should have_content('USRcube')}

    # test for title
    it {should have_title(full_page_title(''))}

    # should not have test for title
    it {should_not have_title(' | Home')}

  end

  # tests for Apps page
  describe "Apps page" do

    before {visit apps_path}

   	# test for content in page
    it {should have_content('Apps')}

    # test for title
    it {should have_title(full_page_title('Apps'))}

  end

  # tests for Support page
  describe "Support page" do

    before {visit support_path}

  	# test for content in page
    it {should have_content('Support')}

    # test for title
    it {should have_title(full_page_title('Support'))}

  end

end
