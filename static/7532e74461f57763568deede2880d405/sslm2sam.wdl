version 1.0

task Sslm2sam {
  input {
    String? output_samfilename_stdout
    String ssl_m_directory
  }
  command <<<
    sslm2sam \
      ~{ssl_m_directory} \
      ~{if defined(output_samfilename_stdout) then ("--output " +  '"' + output_samfilename_stdout + '"') else ""}
  >>>
  parameter_meta {
    output_samfilename_stdout: "output SAM-filename; '-' for stdout"
    ssl_m_directory: "SSLM formatted output directories"
  }
}