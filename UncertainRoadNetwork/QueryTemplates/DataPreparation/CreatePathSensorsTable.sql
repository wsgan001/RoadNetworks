CREATE TABLE PATH##PATH_NUM##_SENSORS (
  POSITION NUMBER,
  LINK_ID NUMBER,
  LAT NUMBER(*, 6),
  LON NUMBER(*, 6),
  GEOM SDO_GEOMETRY,
  POSTMILE NUMBER(*, 2),
  DIRECTION VARCHAR(20 BYTE)
)