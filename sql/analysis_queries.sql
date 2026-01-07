CREATE TABLE user_adoption (
    user_id INT,
    age_group VARCHAR(20),
    platform VARCHAR(50),
    usage_frequency INT
);
INSERT INTO user_adoption VALUES
(1, '18-30', 'Practo', 3),
(2, '18-30', 'Tata 1mg', 4),
(3, '31-45', 'Practo', 2),
(4, '31-45', 'PharmEasy', 3),
(5, '46-60', 'mfine', 1);
SELECT age_group, AVG(usage_frequency) AS avg_usage
FROM user_adoption
GROUP BY age_group;
SELECT platform, COUNT(*) AS user_count
FROM user_adoption
GROUP BY platform;
