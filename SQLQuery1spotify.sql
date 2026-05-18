--select * from spotify

--1. Which Genres Produce the Most Popular Songs?
/*SELECT  top 10 track_genre,
       ROUND(AVG(popularity),2) AS avg_popularity
FROM spotify 
GROUP BY track_genre
ORDER BY avg_popularity DESC*/

--2. Find Top 5 Genres by Number of Songs

/*SELECT  top 5 track_genre,
       COUNT(*) AS total_tracks
FROM spotify
GROUP BY track_genre
ORDER BY total_tracks DESC*/

--3.Do Explicit Songs Have Higher Popularity?
/*SELECT explicit,
       ROUND(AVG(popularity),2) AS avg_popularity,
       COUNT(*) AS total_tracks
FROM spotify
GROUP BY explicit;*/

--4 Which Artists Have the Most Consistently Popular Songs?
/*select top 5
artists,
avg(popularity) avg_popularity,
count(*) as Total_songs
from Spotify
group by artists
having count(*)>5
order by avg_popularity desc*/

--5-Count Explicit vs Non-Explicit Songs
/*SELECT explicit, COUNT(*) AS total_songs
FROM spotify
GROUP BY explicit;*/
--6 find the total number of tracks
/*SELECT COUNT(*) AS total_tracks
FROM spotify;*/

--7 . Find Artists with Most Tracks
/*select  top 5 artists,
count(*)as no_tracks
from spotify
group by artists
order by no_tracks desc*/

--8 Find Songs with High Energy but Low Danceability
/*SELECT track_name, artists, energy, danceability
FROM spotify
WHERE energy > 0.8
AND danceability < 0.4;*/

--9. What is the distribution of songs across tempo categories?
/*SELECT tempo_cat,
       COUNT(*) AS total_tracks
FROM spotify
GROUP BY tempo_cat;*/

--10 Which songs are both highly danceable and highly energetic?
/*SELECT track_name,
       artists,
       danceability,
       energy
FROM spotify
WHERE danceability > 0.75
AND energy > 0.75
ORDER BY popularity DESC;*/
--11. What is the average duration of popular vs unpopular songs?
 
/*SELECT popularity_category,
       ROUND(AVG(duration_min),2) AS avg_duration
FROM spotify
GROUP BY popularity_category;*/
--.12 Rank songs within each genre by popularity
/*SELECT track_genre,
       track_name,
       popularity,
       RANK() OVER(
           PARTITION BY track_genre
           ORDER BY popularity DESC
       ) AS genre_rank
FROM spotify;*/

--13 Find artists with more than 5 popular songs
/*SELECT artists,
       COUNT(*) AS popular_songs
FROM spotify
WHERE popularity_category in ('Popular','Very popular')
GROUP BY artists
HAVING COUNT(*) > 5;
*/



