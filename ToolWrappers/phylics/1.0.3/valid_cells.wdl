version 1.0

task ValidCells {
  input {
    Boolean? verbose
    String sample_name
    String results_dot_txt
    String seg_copy
    Int p_one_p_two_dot
    String out_dir
  }
  command <<<
    valid_cells \
      ~{sample_name} \
      ~{results_dot_txt} \
      ~{seg_copy} \
      ~{p_one_p_two_dot} \
      ~{out_dir} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Verbose execution."
    sample_name: "Sample name"
    results_dot_txt: "Path to stats file"
    seg_copy: "Path to cnvs file"
    p_one_p_two_dot: "Values must be compliant to the following format: p."
    out_dir: "Path to the output directory"
  }
  output {
    File out_stdout = stdout()
  }
}