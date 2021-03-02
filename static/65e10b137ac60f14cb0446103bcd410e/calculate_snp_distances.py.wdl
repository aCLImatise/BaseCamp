version 1.0

task CalculateSnpDistancespy {
  input {
    Boolean? force
    File? pairs
    File? matrix
    Int? verbose
    String cfsan_snp_pipeline
    String distance
  }
  command <<<
    calculate_snp_distances_py \
      ~{cfsan_snp_pipeline} \
      ~{distance} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(pairs) then ("--pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Force processing even when result file already exists\\nand is newer than inputs (default: False)"
    pairs: "Relative or absolute path to the pairwise distance\\noutput file. (default: None)"
    matrix: "Relative or absolute path to the distance matrix\\noutput file. (default: None)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    cfsan_snp_pipeline: ""
    distance: ""
  }
  output {
    File out_stdout = stdout()
    File out_pairs = "${in_pairs}"
    File out_matrix = "${in_matrix}"
  }
}