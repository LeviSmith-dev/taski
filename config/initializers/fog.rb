CarrierWave.configure do |config|
 storage = Fog::Storage.new(
  provider: "AWS",
  region: ENV["US-west-2"], # e.g. us-west-1
  aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
  aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
)
bucket = storage.directories.get(ENV["S3_BUCKET"])
end