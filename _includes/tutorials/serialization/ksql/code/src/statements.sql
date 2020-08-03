CREATE STREAM movies_avro (MOVIE_ID BIGINT KEY, title VARCHAR, release_year INT)
WITH (KAFKA_TOPIC='avro-movies', VALUE_FORMAT='avro');

CREATE STREAM movies_proto
    WITH (KAFKA_TOPIC='proto-movies', VALUE_FORMAT='protobuf') AS
    SELECT * FROM movies_avro;
