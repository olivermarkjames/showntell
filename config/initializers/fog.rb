CarrierWave.configure do |config| 
  config.fog_credentials = { 
    :provider               => 'AWS', 
    :aws_access_key_id      => 'AKIAID7X75C7FSMQC5BQ', 
    :aws_secret_access_key  => '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', 
  } 
  config.fog_directory  = 'photoblog' 
  config.fog_public     = false 
end 