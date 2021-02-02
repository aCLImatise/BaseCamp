version 1.0

task Genomedataclosedata {
  input {
    Boolean? verbose
    String gd_archive
  }
  command <<<
    genomedata_close_data \
      ~{gd_archive} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Print status updates and diagnostic messages"
    gd_archive: "genomedata archive"
  }
  output {
    File out_stdout = stdout()
  }
}