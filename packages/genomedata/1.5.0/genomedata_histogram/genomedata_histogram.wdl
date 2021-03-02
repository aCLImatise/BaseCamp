version 1.0

task Genomedatahistogram {
  input {
    File? include_coords
    Int? num_bins
    String gd_archive
    String track_name
  }
  command <<<
    genomedata_histogram \
      ~{gd_archive} \
      ~{track_name} \
      ~{if defined(include_coords) then ("--include-coords " +  '"' + include_coords + '"') else ""} \
      ~{if defined(num_bins) then ("--num-bins " +  '"' + num_bins + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0"
  }
  parameter_meta {
    include_coords: "limit summary to genomic coordinates in FILE"
    num_bins: "use BINS bins\\n"
    gd_archive: "genomedata archive"
    track_name: "track name"
  }
  output {
    File out_stdout = stdout()
  }
}