version 1.0

task ExtractSingleBestMatchCoordsFilepl {
  command <<<
    extract_single_best_match_coords_file_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}