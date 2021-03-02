version 1.0

task IntegronMerge {
  input {
    Boolean? verbose
    Boolean? quiet
    String outdir
    String outfile
    String results
    Float results_integr_on_finder_acba_dot_zero_zero_seven_dot_pzero_one_dot_one_three
  }
  command <<<
    integron_merge \
      ~{outdir} \
      ~{outfile} \
      ~{results} \
      ~{results_integr_on_finder_acba_dot_zero_zero_seven_dot_pzero_one_dot_one_three} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/integron_finder:2.0rc6--py_0"
  }
  parameter_meta {
    verbose: "Increase verbosity of output (can be cumulative : -vv)"
    quiet: "Decrease verbosity of output (can be cumulative : -qq)"
    outdir: "path of directory where the merged result must be stored"
    outfile: "the basename of the result files ('.integrons' and\\n'.summary') without extension, eg : data_set_1"
    results: "Path to the results dir to merge eg : path/to/"
    results_integr_on_finder_acba_dot_zero_zero_seven_dot_pzero_one_dot_one_three: "path/to/Results_Integron_Finder_lian.001.c02.10"
  }
  output {
    File out_stdout = stdout()
  }
}