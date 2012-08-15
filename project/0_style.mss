Map {
  background-color: #b8dee6;
}

#water {
  polygon-fill: #99bbe8;
  line-opacity:0.3;
}

#waterways {
  line-width:1;
  line-color:#99bbe8;
  line-opacity:0.3;
}

#countries {
  [ne_10m_adm = "CHE"] {
    ::outline {
      line-color: #85c5d3;
      line-width: 3;
      line-join: round;
    }
  }
  polygon-fill: #fff;
  ::border [ne_10m_adm = "CHE"] {
    line-width: 1.2;
  }
}

#railways {
  [railway = "funicular"],
  [railway = "narrow_gauge"],
  [railway = "preserved"],
  [railway = "rail"] {
    line-width:1;
    line-color:#83b279;
    line-opacity:0.3;
  }
}

#roads {
  [highway = "motorway"],
  [highway = "motorway_link"] {
    line-width:1;
    line-color:#b22f2f;
    line-opacity:0.3;
  }
  [highway = "trunk"],
  [highway = "trunk_link"],
  [highway = "primary"],
  [highway = "primary_link"] {
    line-width:1;
    line-color:#dd5656;
    line-opacity:0.3;
  }
  [highway = "secondary"],
  [highway = "secondary_link"] {
    line-width:1;
    line-color:#eb9898;
    line-opacity:0.3;
  }
  [zoom > 10] {
    [highway = "tertiary"],
    [highway = "tertiary_link"] {
      line-width:1;
      line-color:#eb9898;
      line-opacity:0.3;
    }
  }
  [zoom > 11] {
    [highway = "living_street"],
    [highway = "pedestrian"],
    [highway = "residential"],
    [highway = "unclassified"],
    [highway = "service"],
    [highway = "road"] {
      line-width:1;
      line-color:#eb9898;
      line-opacity:0.3;
    }
  }
  [zoom > 13] {
    [highway = "track"] {
      line-width:1;
      line-color:#eb9898;
      line-opacity:0.3;
      line-dasharray: 8, 4;
    }
    [highway = "path"],
    [highway = "footway"],
    [highway = "steps"] {
      line-width:1;
      line-color:#eb9898;
      line-opacity:0.3;
      line-dasharray: 3, 3;
    }
  }
}

#places {
  [place = "city"] {
    marker-width:6;
    marker-fill:#fff;
    marker-line-color:#fff;
    marker-allow-overlap:true;
  }
  ::labels {
    text-name:"[name]";
    text-face-name:"Aller Light Regular";
    text-allow-overlap:true;
    text-placement-type:simple;
    text-dy:10;
    text-opacity:0;
    [place = "city"] {
      text-size:13;
      text-opacity:1;
    }
    [zoom > 9] [place = "town"] {
      text-size:10;
      text-opacity:1;
    }
    [zoom > 11] [place = "village"] {
      text-size:10;
      text-opacity:1;
    }
    [zoom > 12] {
      [place = "hamlet"],
      [place = "isolated_dwelling"] {
        text-size:10;
        text-opacity:1;
      }
    }
  }
}