ALTER TABLE animals
ADD location VARCHAR(50);

INSERT INTO animals (name, location, age, type)
VALUES ('Leroy', 'Colorado', 13, 'hippo'),
('Gus', 'Antarctica', 2, 'seal'),
('Susan', 'England', 8, 'cat');

ALTER TABLE animals
RENAME COLUMN type TO species;

ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR(50) ;