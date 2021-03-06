DROP TABLE PATH_SENSORS;

CREATE TABLE PATH_SENSORS (
  POSITION NUMBER,
  LINK_ID NUMBER,
  LAT NUMBER(*, 6),
  LON NUMBER(*, 6),
  GEOM SDO_GEOMETRY,
  POSTMILE NUMBER(*, 2),
  DIRECTION VARCHAR(20 BYTE)
);

INSERT INTO USER_SDO_GEOM_METADATA VALUES('PATH_SENSORS', 'GEOM', MDSYS.SDO_DIM_ARRAY(MDSYS.SDO_DIM_ELEMENT('X', -180, 180, 0.000001), MDSYS.SDO_DIM_ELEMENT('Y', -90, 90, 0.000001)), 8307);
CREATE INDEX PATH_SENSOR_GEOM_IDX ON PATH_SENSORS(GEOM) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

DROP TABLE PATH_EDGES;

CREATE TABLE PATH_EDGES (
  "FROM" NUMBER,
  "TO" NUMBER,
  DISTANCE NUMBER
);