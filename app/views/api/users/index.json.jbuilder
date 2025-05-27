json.array! @users do |user|
  @fields.each do |field|
    json.set! field, user.public_send(field)
  end
end
