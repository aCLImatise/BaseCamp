version 1.0

task RnaclustScores2Distpl {
  input {
    Boolean? man
    Boolean? verbose
    Boolean? quiet
    Boolean? quantile
  }
  command <<<
    rnaclustScores2Dist_pl \
      ~{if (man) then "--man" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (quantile) then "--quantile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "full documentation"
    verbose: "be verbose"
    quiet: "be quiet"
    quantile: "the quantile"
  }
  output {
    File out_stdout = stdout()
  }
}