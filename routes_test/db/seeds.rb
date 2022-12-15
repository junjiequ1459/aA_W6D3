User.create!([
  {username: "bob"},
  {username: "Kevin"},
  {username: "Kevin"},
  {username: "bob"},
  {username: "Kevin"},
  {username: "Kevin2"},
  {username: "Ryan"},
  {username: "xRex"},
  {username: "joseph"},
  {username: "reggie"},
  {username: "KING KA"},
  {username: "bob"},
  {username: "Kevin"},
  {username: "Kevin"},
  {username: "bob"},
  {username: "Kevin"},
  {username: "Kevin2"},
  {username: "Ryan"},
  {username: "xRex"},
  {username: "joseph"},
  {username: "reggie"},
  {username: "KING KA"}
])
ArtworkShare.create!([
  {artwork_id: 2, viewer_id: 22}
])
Artwork.create!([
  {title: "self portrait", img_url: "bob.com/bob", artist_id: 2},
  {title: "self portrait", img_url: "bob.com/bob2", artist_id: 4},
  {title: "bob again", img_url: "bob.com/bob3", artist_id: 2}
])
