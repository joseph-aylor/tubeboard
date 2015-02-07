json.array!(@clips) do |clip|
  json.extract! clip, :id, :title, :url, :start, :end, :position, :board_id
  json.url clip_url(clip, format: :json)
end
