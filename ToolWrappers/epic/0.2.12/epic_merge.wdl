version 1.0

task Epicmerge {
  input {
    Array[String] matrixes
    Array[String] regions
    Boolean? keep_non_enriched
    Boolean? enriched_per_file
    File? path_write_matrix
    Int? number_cores
  }
  command <<<
    epic_merge \
      ~{if defined(matrixes) then ("--matrixes " +  '"' + matrixes + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if (keep_non_enriched) then "--keep-nonenriched" else ""} \
      ~{if (enriched_per_file) then "--enriched-per-file" else ""} \
      ~{if defined(path_write_matrix) then ("--output " +  '"' + path_write_matrix + '"') else ""} \
      ~{if defined(number_cores) then ("--number-cores " +  '"' + number_cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrixes: "epic-count matrixes to merge."
    regions: "Bed file(s) with regions to use. Does not work with\\n--keep-nonenriched."
    keep_non_enriched: "Keep non-enriched bins also (takes much more\\ntime/mem). Not usable with --regions."
    enriched_per_file: "Keep a column of enrichment info per matrix used."
    path_write_matrix: "Path to write gzipped output matrix."
    number_cores: "Number of cpus to use. Can use at most one per\\nchromosome. Default: 1.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_write_matrix = "${in_path_write_matrix}"
  }
}