CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	artist_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenreArtists (
	genre_id INTEGER NOT NULL REFERENCES Genres(id),
	artist_id INTEGER NOT NULL REFERENCES Artists(id),
	CONSTRAINT genart PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(60) NOT NULL,
	release_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	track_duration TIME NOT NULL,
	album_id INTEGER REFERENCES Albums(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistsAlbums (
	artist_id INTEGER NOT NULL REFERENCES Artists(id),
	album_id INTEGER NOT NULL REFERENCES Albums(id),
	CONSTRAINT artalb PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Collections(
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(60) NOT NULL,
	creation_date DATE NOT NULL
);
CREATE TABLE IF NOT EXISTS CollectionsTracks(
	collection_id INTEGER NOT NULL REFERENCES Collections(id),
	track_id INTEGER NOT NULL REFERENCES Tracks(id),
	CONSTRAINT coltra PRIMARY KEY (collection_id, track_id)
);