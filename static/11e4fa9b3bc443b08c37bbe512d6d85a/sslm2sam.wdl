version 1.0

task Sslm2sam {
  input {
    File? verbose
    String ssl_m_directory
  }
  command <<<
    sslm2sam \
      ~{ssl_m_directory} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "output SAM-filename; '-' for stdout\\n"
    ssl_m_directory: "SSLM formatted output directories"
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}