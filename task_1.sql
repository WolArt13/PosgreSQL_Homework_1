--Задание 1

insert into artists(name_)
values('Michael Jackson');
insert into artists(name_)
values('Queen');
insert into artists(name_)
values('Metallica');
insert into artists(name_)
values('Frank Sinatra');
insert into artists(name_)
values('Stevie Wonder');
insert into genres(name_)
values('pop');
insert into genres(name_)
values('rock');
insert into genres(name_)
values('jazz');
insert into genres(name_)
values('metall');
insert into albums(name_, release_year)
values('Thriller', 1982);
insert into albums(name_, release_year)
values('A Night at the Opera', 1975);
insert into albums(name_, release_year)
values('…And Justice for All', 1979);
insert into albums(name_, release_year)
values('Songs for Swingin Lovers', 1956);
insert into albums(name_, release_year)
values('Innervisions', 1973);
insert into tracks(name_, duration, album_ID)
values('Wanna be startin something', '00:06:03', 1);
insert into tracks(name_, duration, album_ID)
values('Baby be mine', '00:04:20', 1);
insert into tracks(name_, duration, album_ID)
values('The Girl is mine', '00:03:42', 1);
insert into tracks(name_, duration, album_ID)
values('Thriller', '00:05:57', 1);
insert into tracks(name_, duration, album_ID)
values('Beat it', '00:04:18', 1);
insert into tracks(name_, duration, album_ID)
values('Billie Jean', '00:04:54', 1);
insert into tracks(name_, duration, album_ID)
values('Humann Nature', '00:04:06', 1);
insert into tracks(name_, duration, album_ID)
values('Humann Nature', '00:04:06', 1);
insert into tracks(name_, duration, album_ID)
values('P.Y.T (Pretty Young Thing)', '00:03:59', 1);
insert into tracks(name_, duration, album_ID)
values('The Lady in my life', '00:05:00', 1);

insert into tracks(name_, duration, album_ID)
values('Death on two legs (Dedicated To...)', '00:00:30', 2);
insert into tracks(name_, duration, album_ID)
values('Lazing on a sunday afternoon', '00:01:07', 2);
insert into tracks(name_, duration, album_ID)
values('I am in love with my car', '00:03:04', 2);
insert into tracks(name_, duration, album_ID)
values('You are my best friend', '00:02:50', 2);
insert into tracks(name_, duration, album_ID)
values('Sweet lady', '00:04:02', 2);
insert into tracks(name_, duration, album_ID)
values('Bohemian Rapsody', '00:05:54', 2);

insert into tracks(name_, duration, album_ID)
values('Blackened', '00:06:40', 3);
insert into tracks(name_, duration, album_ID)
values('...And Justice for all', '00:09:46', 3);
insert into tracks(name_, duration, album_ID)
values('Eye of the beholder', '00:06:30', 3);
insert into tracks(name_, duration, album_ID)
values('One', '00:07:27', 3);
insert into tracks(name_, duration, album_ID)
values('The shortest straw', '00:06:35', 3);
insert into tracks(name_, duration, album_ID)
values('Harvester of sorrow', '00:05:45', 3);

insert into tracks(name_, duration, album_ID)
values('Too marvelous for words', '00:02:26', 4);
insert into tracks(name_, duration, album_ID)
values('Old devil moon', '00:03:53', 4);
insert into tracks(name_, duration, album_ID)
values('Will be together again', '00:04:22', 4);

insert into tracks(name_, duration, album_ID)
values('Too high', '00:04:36', 5);
insert into tracks(name_, duration, album_ID)
values('Visions', '00:05:23', 5);
insert into tracks(name_, duration, album_ID)
values('Living for the city', '00:07:22', 5);
insert into tracks(name_, duration, album_ID)
values('Golden Lady', '00:04:58', 5);
insert into tracks(name_, duration, album_ID)
values('Higher Ground', '00:03:42', 5);
insert into tracks(name_, duration, album_ID)
values('All in love is fair', '00:03:41', 5);

insert into collections (name_, release_year)
values('Rock legends', 1990);
insert into collections (name_, release_year)
values('Top jazz singers', 2009);
insert into collections (name_, release_year)
values('Metall for all', 2015);
insert into collections (name_, release_year)
values('Best pop songs', 2010);

insert into tracks_collections (track_ID, collection_ID)
values(1, 4);
insert into tracks_collections (track_ID, collection_ID)
values(2, 4);
insert into tracks_collections (track_ID, collection_ID)
values(3, 4);
insert into tracks_collections (track_ID, collection_ID)
values(4, 4);
insert into tracks_collections (track_ID, collection_ID)
values(5, 4);
insert into tracks_collections (track_ID, collection_ID)
values(6, 4);
insert into tracks_collections (track_ID, collection_ID)
values(7, 4);
insert into tracks_collections (track_ID, collection_ID)
values(8, 4);
insert into tracks_collections (track_ID, collection_ID)
values(9, 4);
insert into tracks_collections (track_ID, collection_ID)
values(23, 4);
insert into tracks_collections (track_ID, collection_ID)
values(24, 4);
insert into tracks_collections (track_ID, collection_ID)
values(25, 4);

insert into tracks_collections (track_ID, collection_id)
values(10,1);
insert into tracks_collections (track_ID, collection_id)
values(11,1);
insert into tracks_collections (track_ID, collection_id)
values(12,1);
insert into tracks_collections (track_ID, collection_id)
values(13,1);
insert into tracks_collections (track_ID, collection_id)
values(14,1);
insert into tracks_collections (track_ID, collection_id)
values(15,1);

insert into tracks_collections (track_ID, collection_id)
values(16,3);
insert into tracks_collections (track_ID, collection_id)
values(17,3);
insert into tracks_collections (track_ID, collection_id)
values(18,3);
insert into tracks_collections (track_ID, collection_id)
values(19,3);
insert into tracks_collections (track_ID, collection_id)
values(20,3);
insert into tracks_collections (track_ID, collection_id)
values(21,3);

insert into tracks_collections (track_ID, collection_id)
values(26,2);
insert into tracks_collections (track_ID, collection_id)
values(27,2);
insert into tracks_collections (track_ID, collection_id)
values(28,2);
insert into tracks_collections (track_ID, collection_id)
values(29,2);
insert into tracks_collections (track_ID, collection_id)
values(30,2);
insert into tracks_collections (track_ID, collection_id)
values(31,2);

insert into albums_artists (album_id, artist_id)
values(1, 1);
insert into albums_artists (album_id, artist_id)
values(2, 2);
insert into albums_artists (album_id, artist_id)
values(3, 3);
insert into albums_artists (album_id, artist_id)
values(4, 4);
insert into albums_artists (album_id, artist_id)
values(5, 5);

insert into artists_genres (artist_id, genre_id)
values(1, 1);
insert into artists_genres (artist_id, genre_id)
values(2, 2);
insert into artists_genres (artist_id, genre_id)
values(3, 4);
insert into artists_genres (artist_id, genre_id)
values(4, 3);
insert into artists_genres (artist_id, genre_id)
values(5, 1);