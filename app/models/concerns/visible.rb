module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']


  class_methods do
    def public_count
      where(status: 'public').count
    end
    def private_count
      where(status: 'private').count
    end
  end  
  def archived?
    status == 'archived'
  end
end
