json.extract! video, :id, :dash, :hls, :progressive, :name, :created_at, :updated_at
json.url video_url(video, format: :json)