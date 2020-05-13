version 1.0

task Make2dPlots.py {
  input {
    String coordCoordFname
    String mapMapFname
  }
  command <<<
    make_2d_plots.py \
      ~{if defined(coordCoordFname) then ("--coord_fname " +  '"' + coordCoordFname + '"') else ""} \
      ~{if defined(mapMapFname) then ("--map_fname " +  '"' + mapMapFname + '"') else ""}
  >>>
}