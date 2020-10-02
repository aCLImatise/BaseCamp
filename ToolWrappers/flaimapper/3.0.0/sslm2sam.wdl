version 1.0

task Sslm2sam {
  input {
    String ssl_m_directory
  }
  command <<<
    sslm2sam \
      ~{ssl_m_directory}
  >>>
  parameter_meta {
    ssl_m_directory: "SSLM formatted output directories"
  }
  output {
    File out_stdout = stdout()
  }
}