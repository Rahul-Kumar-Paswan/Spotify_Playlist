data "spotify_search_track" "singer_name" {
  artist = "shreya ghoshal"
}

resource "spotify_playlist" "tollywood" {
  name        = "Songs"
  description = "This playlist was created by Terraform"

  tracks = [
    data.spotify_search_track.singer_name.tracks[0].id,
    data.spotify_search_track.singer_name.tracks[3].id,
    data.spotify_search_track.singer_name.tracks[5].id
  ]
}