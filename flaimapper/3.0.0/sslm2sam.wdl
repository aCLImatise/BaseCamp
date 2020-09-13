version 1.0

task Sslm2sam {
  input {
    Boolean? verbose
    Boolean? quiet
    File? output_samfilename_stdout
    String ssl_m_directory
  }
  command <<<
    sslm2sam \
      ~{ssl_m_directory} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(output_samfilename_stdout) then ("--output " +  '"' + output_samfilename_stdout + '"') else ""}
  >>>
  parameter_meta {
    verbose: ""
    quiet: ""
    output_samfilename_stdout: "output SAM-filename; '-' for stdout\\n"
    ssl_m_directory: "SSLM formatted output directories"
  }
  output {
    File out_stdout = stdout()
    File out_output_samfilename_stdout = "${in_output_samfilename_stdout}"
  }
}