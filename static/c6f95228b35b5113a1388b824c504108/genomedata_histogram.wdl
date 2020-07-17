version 1.0

task GenomedataHistogram {
  input {
    File? include_coords
    String? num_bins
    String gd_archive
    String track_name
  }
  command <<<
    genomedata-histogram \
      ~{gd_archive} \
      ~{track_name} \
      ~{if defined(include_coords) then ("--include-coords " +  '"' + include_coords + '"') else ""} \
      ~{if defined(num_bins) then ("--num-bins " +  '"' + num_bins + '"') else ""}
  >>>
  parameter_meta {
    include_coords: "limit summary to genomic coordinates in FILE"
    num_bins: "use BINS bins"
    gd_archive: "genomedata archive"
    track_name: "track name"
  }
}