version 1.0

task Genomedataopendata {
  input {
    Array[String] track_names
    Boolean? verbose
    Boolean? v
    String gd_archive
  }
  command <<<
    genomedata_open_data \
      ~{gd_archive} \
      ~{if defined(track_names) then ("--tracknames " +  '"' + track_names + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    track_names: "tracknames to open"
    verbose: "Print status updates and diagnostic messages"
    v: ""
    gd_archive: "genomedata archive"
  }
  output {
    File out_stdout = stdout()
  }
}