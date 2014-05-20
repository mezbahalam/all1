json.array!(@offenders) do |offender|
  json.extract! offender, :id, :name, :gender, :age, :address, :mobile_no, :occupation, :religion, :educational_background, :crimes, :father_name, :mother_name, :father_occupation, :mother_occupation, :family_income, :psychological_status, :image
  json.url offender_url(offender, format: :json)
end
