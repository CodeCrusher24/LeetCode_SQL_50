SELECT * FROM Cinema
WHERE id%2<>0 AND description NOT like '%boring%' order by rating desc;
