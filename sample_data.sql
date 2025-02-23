-- Insert users
INSERT INTO Users (username, email) VALUES
('john_doe', 'john@example.com'),
('jane_smith', 'jane@example.com'),
('alice_wonder', 'alice@example.com'),
('bob_builder', 'bob@example.com'),
('charlie_pace', 'charlie@example.com'),
('david_tennant', 'david@example.com'),
('eve_tech', 'eve@example.com'),
('frank_ocean', 'frank@example.com'),
('grace_hopper', 'grace@example.com'),
('harry_potter', 'harry@example.com');

-- Insert posts
INSERT INTO Posts (user_id, content) VALUES
(1, 'Exploring SQL queries today! #DataScience'),
(2, 'Just published a blog on AI! #MachineLearning'),
(3, 'Learning MySQL! #SQL'),
(4, 'The future of AI is bright! #ArtificialIntelligence'),
(5, 'Data Science is fun! #BigData'),
(6, 'Blockchain will change the world! #Crypto'),
(7, 'Quantum computing is fascinating! #QuantumComputing'),
(8, 'Python or JavaScript? #Programming'),
(9, 'Machine learning models are improving! #DeepLearning'),
(10, 'Networking is essential in tech! #CyberSecurity');

-- Insert likes
INSERT INTO Likes (user_id, post_id) VALUES 
(2, 1), (1, 2), (3, 1), (4, 2), (5, 3), (6, 4), (7, 5), (8, 6), (9, 7), (10, 8),
(1, 3), (2, 4), (3, 5), (4, 6), (5, 7), (6, 8);

-- Insert comments
INSERT INTO Comments (user_id, post_id, comment_text) VALUES
(2, 1, 'Great post!'), 
(1, 2, 'Loved your article!'),
(3, 1, 'SQL is powerful!'), 
(4, 2, 'AI is everywhere now!'),
(5, 3, 'Data Science is evolving fast!'),
(6, 4, 'Blockchain has so much potential!'),
(7, 5, 'Quantum computing is the next frontier!'),
(8, 6, 'I prefer Python over JavaScript.'),
(9, 7, 'Deep Learning models are amazing!'),
(10, 8, 'Cybersecurity is critical in today’s world.');

-- Insert hashtags
INSERT INTO Hashtags (post_id, hashtag) VALUES
(1, 'DataScience'),
(2, 'MachineLearning'),
(3, 'SQL'),
(4, 'ArtificialIntelligence'),
(5, 'BigData'),
(6, 'Crypto'),
(7, 'QuantumComputing'),
(8, 'Programming'),
(9, 'DeepLearning'),
(10, 'CyberSecurity');