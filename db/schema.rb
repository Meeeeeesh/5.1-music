ActiveRecord::Schema.define(version: 20150713194845) do

  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "song_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "bio"
    t.string   "image"
    t.string   "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "song_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meesh_artists_albums", force: :cascade do |t|
    t.integer "album_id"
    t.integer "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meesh_artists_albums", ["album_id_id"] name: "index_meesh_artists_albums_on_album_id_id", using: :btree
  add_index "meesh_artists_albums", ["artist_id_id"] name: "index_meesh_artists_albums_on_artist_id_id", using: :btree
  
  create_table "meesh_songs_genres", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false    
  end

  add_index "meesh_songs_genres", ["genre_id_id"] name: "index_meesh_songs_genres_on_genre_id_id", using: :btree
  add_index "meesh_songs_genres", ["song_id_id"] name: "index_meesh_songs_genres_on_song_id_id", using: :btree  

  create_table "meesh_songs_playlist", force: :cascade do |t|
    t.integer "song_id"
    t.integer "playlist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meesh_songs_playlist", ["song_id_id"] name: "index_meesh_songs_playlist_on_song_id_id", using: :btree
  add_index "meesh_songs_playlist", ["playlist_id_id"] name: "index_meesh_songs_playlist_on_playlist_id_id", using: :btree  
 
  create_table "playlists", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title",      null: false
    t.integer  "length",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "artist_id",  null: false
  end

  add_foreign_key "songs", "artists"
  add_foreign_key "artists", "songs"
  add_foreign_key "albums", "songs"

end
