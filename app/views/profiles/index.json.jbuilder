json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :name, :email, :contact_phone_no, :emergency_contact_name, :emergency_contact_phone_no
  json.url profile_url(profile, format: :json)
end
