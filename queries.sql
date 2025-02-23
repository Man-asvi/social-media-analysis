-- Get most engaged users (users who liked/commented the most)
SELECT username, 
       (SELECT COUNT(*) FROM Likes WHERE Likes.user_id = Users.user_id) AS total_likes,
       (SELECT COUNT(*) FROM Comments WHERE Comments.user_id = Users.user_id) AS total_comments
FROM Users
ORDER BY total_likes + total_comments DESC
LIMIT 5;

-- Find trending hashtags
SELECT hashtag, COUNT(*) AS usage_count 
FROM Hashtags 
GROUP BY hashtag 
ORDER BY usage_count DESC 
LIMIT 5;

-- Get top posts based on engagement (likes + comments)
SELECT Posts.post_id, Posts.content, COUNT(DISTINCT Likes.like_id) AS total_likes,
       COUNT(DISTINCT Comments.comment_id) AS total_comments
FROM Posts
LEFT JOIN Likes ON Posts.post_id = Likes.post_id
LEFT JOIN Comments ON Posts.post_id = Comments.post_id
GROUP BY Posts.post_id
ORDER BY total_likes + total_comments DESC
LIMIT 5;

-- Find the Most Active Users
SELECT username, 
       (SELECT COUNT(*) FROM Posts WHERE Posts.user_id = Users.user_id) AS total_posts,
       (SELECT COUNT(*) FROM Likes WHERE Likes.user_id = Users.user_id) AS total_likes,
       (SELECT COUNT(*) FROM Comments WHERE Comments.user_id = Users.user_id) AS total_comments,
       ((SELECT COUNT(*) FROM Posts WHERE Posts.user_id = Users.user_id) +
        (SELECT COUNT(*) FROM Likes WHERE Likes.user_id = Users.user_id) +
        (SELECT COUNT(*) FROM Comments WHERE Comments.user_id = Users.user_id)) AS engagement_score
FROM Users
ORDER BY engagement_score DESC
LIMIT 5;
