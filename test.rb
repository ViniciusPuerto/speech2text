require "google/cloud/speech"
require 'json'


# Instantiates a client
speech = Google::Cloud::Speech.new

# The name of the audio file to transcribe
file_name = "./newmp3.mp3"


# The raw audio
audio_file = File.binread file_name
encoding = :LINEAR16
# The audio file's encoding and sample rate        
    config =  {
                encoding: "LINEAR16",
                language_code: "pt-BR",
                model: "default",
                sample_rate_hertz: 16000
            }
            
    audio  = { content: audio_file }

# Detects speech in the audio file
response = speech.recognize(config, audio)

results = response.results

puts response

# alternatives = results.first.alternatives
# alternatives.each do |alternative|
# puts "Transcription: #{alternative.transcript}"
# end
        