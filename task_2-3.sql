--Задание 2

--Название и продолжительность самого длительного трека.

select name_, duration from tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут.

select name_, duration from tracks
where duration > '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.

select name_ from collections c 
where release_year > 2017 and release_year < 2021;

--Исполнители, чьё имя состоит из одного слова.

select name_ from artists
WHERE (LENGTH(name_) - LENGTH(replace(name_, ' ', ''))) = 0;

--Название треков, которые содержат слово «мой» или «my».

select name_ from tracks t 
where name_ like '%my%';

--Задание 3

--Количество исполнителей в каждом жанре.

select genres.name_, count(ag.artist_id) FROM genres
LEFT JOIN artists_genres ag ON genres.genre_id = ag.genre_id
LEFT join artists a on ag.artist_id = a.artist_id 
GROUP BY genres.name_ ;

--Количество треков, вошедших в альбомы 2019–2020 годов.

SELECT albums.name_, COUNT(tracks.track_id) from albums
LEFT JOIN tracks ON tracks.album_id = albums.album_id
WHERE albums.release_year > 2018 and albums.release_year < 2021
GROUP BY albums.name_ ;

--Средняя продолжительность треков по каждому альбому.

SELECT albums.name_, AVG(duration) FROM albums
LEFT JOIN tracks on tracks.album_id = albums.album_id
GROUP BY albums.name_
ORDER BY AVG(duration) DESC;

--Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT artists.name_, albums.name_, albums.release_year  FROM artists
LEFT JOIN albums_artists on artists.artist_id = albums_artists.artist_id
LEFT JOIN albums on albums_artists.album_id = albums.album_id
WHERE albums.release_year != 2020
GROUP BY artists.name_, albums.name_, albums.release_year;

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

SELECT collections.name_ FROM artists
LEFT JOIN albums_artists on artists.artist_id = albums_artists.artist_id
LEFT JOIN albums on albums_artists.album_id = albums.album_id
LEFT JOIN tracks on albums.album_id= tracks.album_id
LEFT JOIN tracks_collections on tracks.track_id= tracks_collections.track_id
LEFT JOIN collections on tracks_collections.collection_id = collections.collection_id
WHERE artists.name_ = 'Metallica'
GROUP BY collections.name_