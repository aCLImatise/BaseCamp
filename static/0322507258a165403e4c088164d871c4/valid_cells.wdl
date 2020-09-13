version 1.0

task ValidCells {
  input {
    Boolean? verbose
    String sample_name
    String results_dot_txt
    String seg_copy
    String interval_slash_value
    String out_dir
  }
  command <<<
    valid_cells \
      ~{sample_name} \
      ~{results_dot_txt} \
      ~{seg_copy} \
      ~{interval_slash_value} \
      ~{out_dir} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Verbose execution."
    sample_name: "Sample name"
    results_dot_txt: "Path to stats file"
    seg_copy: "Path to cnvs file"
    interval_slash_value: "Interval of values (p1-p2) or single values (p) to be\\nfiltered out. At least one interval/value must be specified.\\nIntervals must be compliant to the following format: p1-p2.\\nValues must be compliant to the following format: p."
    out_dir: "Path to the output directory"
  }
  output {
    File out_stdout = stdout()
  }
}