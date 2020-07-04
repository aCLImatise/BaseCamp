version 1.0

task EpicMerge {
  input {
    Array[String] matrixes
    Array[String] regions
    Boolean? keep_non_enriched
    Boolean? enriched_per_file
    String? path_write_matrix
    String? number_cores
  }
  command <<<
    epic-merge \
      ~{if defined(matrixes) then ("--matrixes " +  '"' + matrixes + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{true="--keep-nonenriched" false="" keep_non_enriched} \
      ~{true="--enriched-per-file" false="" enriched_per_file} \
      ~{if defined(path_write_matrix) then ("--output " +  '"' + path_write_matrix + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""}
  >>>
  parameter_meta {
    matrixes: "epic-count matrixes to merge."
    regions: "Bed file(s) with regions to use. Does not work with --keep-nonenriched."
    keep_non_enriched: "Keep non-enriched bins also (takes much more time/mem). Not usable with --regions."
    enriched_per_file: "Keep a column of enrichment info per matrix used."
    path_write_matrix: "Path to write gzipped output matrix."
    number_cores: "Number of cpus to use. Can use at most one per chromosome. Default: 1."
  }
}