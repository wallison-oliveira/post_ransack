json.extract! employee, :id, :name, :age, :email, :street, :house_number, :neighborhood, :city, :state, :created_at, :updated_at
json.url employee_url(employee, format: :json)
