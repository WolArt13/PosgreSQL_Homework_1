CREATE TABLE IF NOT EXISTS albums (
		album_ID SERIAL PRIMARY KEY,
		name_ varchar(80) NOT NULL,
		release_year int NOT NULL
);
CREATE TABLE IF NOT EXISTS tracks (
		track_ID SERIAL PRIMARY KEY,
		name_ VARCHAR(80) NOT NULL,
		album_ID int NOT NULL REFERENCES albums(album_ID),
		duration TIME NOT NULL CHECK(duration > '00:00:00' and duration < '00:59:59')
);
CREATE TABLE IF NOT EXISTS collections (
		collection_ID SERIAL PRIMARY KEY,
		name_ VARCHAR(80) NOT NULL,
		release_year int NOT null CHECK(release_year between '1920' and '2024') 
);
CREATE TABLE IF NOT EXISTS tracks_collections (
		ID serial PRIMARY KEY,
		track_ID int NOT NULL REFERENCES tracks(track_ID),
		collection_ID integer NOT NULL REFERENCES collections(collection_ID)
);
CREATE TABLE IF NOT EXISTS artists (
		artist_ID serial PRIMARY KEY,
		name_ varchar(80) NOT NULL
);
CREATE TABLE IF NOT EXISTS albums_artists (
		ID serial PRIMARY KEY,
		album_ID int NOT NULL REFERENCES albums(album_ID),
		artist_ID int NOT NULL REFERENCES artists(artist_ID)
);
CREATE TABLE IF NOT EXISTS genres (
		genre_ID serial PRIMARY KEY,
		name_ VARCHAR(40) NOT NULL UNIQUE
);
create TABLE IF NOT EXISTS artists_genres (
		ID serial PRIMARY KEY,
		artist_ID int NOT NULL REFERENCES artists(artist_ID),
		genre_ID int NOT NULL REFERENCES genres(genre_ID)
);