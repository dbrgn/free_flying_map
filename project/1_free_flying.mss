#aerialways {
  line-width:1;
  line-color:#e55535;
  
  [aerialway = "cable_car"],
  [aerialway = "chair_lift"],
  [aerialway = "gondola"],
  [aerialway = "mixed_lift"] {
    line-color: #df9d22;
  }
}

#aerialway_points {
  [zoom > 10] [aerialway = "station"] {
    marker-width:3;
    marker-fill:#ff4455;
    marker-line-color:#813;
    marker-allow-overlap:true;
  }
  [zoom > 12] [aerialway = "pylon"] {
    marker-width:1;
    marker-fill:#000;
    marker-line-color:#000;
    marker-allow-overlap:true;
  }
}

#free_flying_areas {
  polygon-fill: #ccc;
  [free_flying_site = "takeoff"] {
    polygon-fill:#ff4455; 
  }
  [free_flying_site = "landing"] {
    polygon-fill:#609b54;
  }
}

#free_flying_nodes, #free_flying_areas::points {
  marker-width:8;
  marker-allow-overlap:true;
  marker-fill:#ccc;
  marker-line-color:#333;
  [free_flying_site = "takeoff"] {
    marker-fill:#ff4455;
    marker-line-color:#813;
  }
  [free_flying_site = "landing"] {
    marker-fill:#609b54;
    marker-line-color:#284122;
  }
  [free_flying_shop = "yes"] {
    marker-fill:#577eb9;
    marker-line-color:#3a557d;
  }
  [zoom > 10] {
    ::labels {
      text-name:"[name]";
      text-face-name:"Aller Light Regular";
      text-allow-overlap:true;
      text-placement-type:simple;
      text-dy:10;
    }
  }
}