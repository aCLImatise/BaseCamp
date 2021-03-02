version 1.0

task FastautilsUid {
  input {
    File? verbose
    String? fast_a_file
    String? output_file
  }
  command <<<
    fasta_utils uid \
      ~{fast_a_file} \
      ~{output_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "Filename of a table to record the changes (by default\\ndiscards it)"
    fast_a_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}