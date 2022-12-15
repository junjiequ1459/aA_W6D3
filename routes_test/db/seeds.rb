User.create!([
  { username: "bob" },
  { username: "Kevin" },
  { username: "Kevin2" },
  { username: "Ryan" },
  { username: "xRex" },
  { username: "joseph" },
  { username: "reggie" },
])

Artwork.create!(
  [
    { title: "self portrait", img_url: "bob.com/bob", artist_id: 2 },
  ]
)
