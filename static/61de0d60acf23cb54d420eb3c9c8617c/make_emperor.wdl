version 1.0

task MakeEmperor.py {
  input {
    String? input_coords
    String? map_fp
  }
  command <<<
    make_emperor.py \
      ~{if defined(input_coords) then ("--input_coords " +  '"' + input_coords + '"') else ""} \
      ~{if defined(map_fp) then ("--map_fp " +  '"' + map_fp + '"') else ""}
  >>>
  parameter_meta {
    input_coords: "Depending on the plot to be generated, can be one of the following: (1) Filepath of a coordinates file to create a PCoA plot. (2) Directory path to a folder containing coordinates files to create a jackknifed PCoA plot. (3) Directory path to a folder containing coordinates files to compare the coordinates there contained when --compare_plots is enabled (useful for procustes analysis plots). For directories: hidden files, sub-directories and files suffixed as '_procrustes_results.txt' [REQUIRED]"
    map_fp: "path to a metadata mapping file [REQUIRED]"
  }
}