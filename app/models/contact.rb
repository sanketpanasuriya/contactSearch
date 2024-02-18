class Contact < ApplicationRecord

  scope :find_contacts, lambda { |content|
    search_query = <<-SQL
      REPLACE(name, ' ', '') ILIKE :content OR REPLACE(number, ' ', '') ILIKE :content
    SQL

    where(Arel.sql(search_query), content: "%#{content.gsub(' ', '')}%") if content.present?
  }
end
