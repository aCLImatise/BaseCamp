version 1.0

task MergeMatchesAndTileCoordsFilepl {
  command <<<
    merge_matches_and_tile_coords_file_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}