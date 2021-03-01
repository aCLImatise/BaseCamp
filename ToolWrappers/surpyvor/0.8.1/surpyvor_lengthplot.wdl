version 1.0

task SurpyvorLengthplot {
  input {
    Boolean? verbose
    File? plot_out
    File? counts
  }
  command <<<
    surpyvor lengthplot \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(plot_out) then ("--plotout " +  '"' + plot_out + '"') else ""} \
      ~{if defined(counts) then ("--counts " +  '"' + counts + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print out more information while running."
    plot_out: "output file to write figure to"
    counts: "output file to write counts to\\n"
  }
  output {
    File out_stdout = stdout()
    File out_plot_out = "${in_plot_out}"
    File out_counts = "${in_counts}"
  }
}