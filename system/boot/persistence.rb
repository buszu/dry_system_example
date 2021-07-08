# frozen_string_literal: true

Example::Application.boot(:persistence) do |app|
  init do
    require 'sequel'

    use :settings

    Sequel.datetime_class = DateTime
  end

  start do
    db = Sequel.connect(app[:settings].database_url)
    db.extension :pg_json

    app.register('persistence.db', db)
  end
end
