select * from artists;
select count(*) from artists;

select * from albums
select * from albums where ArtistId = 150

select * from playlists 
select * from playlists where Name like 'A%'

select * from tracks 
select * from playlist_track

--Find all the albums for a given artist
select * from artists 
join albums on artists.ArtistId = albums.ArtistId
where artists.ArtistId = "17"

--Find all the songs for a given Genre
select * from genres
join tracks on genres.genreId = tracks.GenreId
--where genres.genreid = 14

--Find all the songs in a playlist - by playlist name
select * from playlists
join playlist_track on playlist_track.PlaylistId = playlists.PlaylistId
join tracks on playlist_track.TrackId = tracks.TrackId
where playlists.Name = 'Music'

-- Find all the artists for a given genre
SELECT* FROM genres 
JOIN tracks on tracks.GenreId = genres.GenreId
JOIN albums on albums.AlbumId = tracks.AlbumId
JOIN artists on artists.ArtistId = albums.ArtistId
where genres.Name = "Rock"

--Find the Playlist with the most / least songs
select playlists.Name, count(*) from playlists
join playlist_track
on playlists.PlaylistId = playlist_track.PlaylistId
group by playlists.Name
ORDER BY count(*) desc 
limit 1

select playlists.Name, count(*) from playlists
join playlist_track
on playlists.PlaylistId = playlist_track.PlaylistId
group by playlists.Name
ORDER BY count(*) asc 
limit 1

--Find the total for a given invoice
select * from invoices where invoices.InvoiceId = 17

--Find all the playlists containing a given genre
SELECT * FROM genres 
JOIN playlists on playlists.PlaylistId = playlist_track.PlaylistId
JOIN playlist_track on playlist_track.TrackId = tracks.TrackIdId
JOIN tracks on tracks.GenreId = genres.GenreId
where genres.Name = "Rock"

--Find the biggest/smallest invoice 
select InvoiceId, MAX(total) from invoices

select InvoiceId, MIN(total) from invoices

--Find the artist with the most/least songs
select DISTINCT artists.Name, tracks.Name, count(*) as trackCount from artists
join albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.AlbumId
GROUP BY artists.Name
order by trackCount DESC
limit 3
offset 1

select DISTINCT artists.Name, tracks.Name, count(*) as trackCount from artists
join albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.AlbumId
GROUP BY artists.Name
order by trackCount ASC
limit 3
offset 1












