Free Flying Map
===============

OpenStreetMap based map for paragliders and hanggliders. Map was created using
TileMill.

I plan on publishing this map as a slippy map some time in the future.

Setup
-----

Create a symlink from the `project` folder to your TileMill projects directory
(usually `~/Documents/MapBox/project/`):

    $ ln -s /path/to/free_flying_map/project ~/Documents/MapBox/project/free_flying_map

Then setup your (hstore and postgis ready) PostgreSQL database (user: osm, pw:
osm, db: osm) using a OSM Switzerland dump from
[Geofabrik](http://download.geofabrik.de/osm/europe/) with osm2pgsql:

    $ wget http://download.geofabrik.de/openstreetmap/europe/switzerland.osm.bz2
    $ osm2pgsql -E 3857 --slim -C 2048 -c -u -k -H localhost -d osm switzerland.osm.bz2

Contributions
-------------

Contributions are welcome and should be made in the form of a GitHub pull
request.
