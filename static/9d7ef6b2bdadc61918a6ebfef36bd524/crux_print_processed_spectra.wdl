version 1.0

task CruxPrintprocessedspectra {
  input {
    File ms_two_file
  }
  command <<<
    crux print_processed_spectra \
      ~{ms_two_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ms_two_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}