version 1.0

task CruxPrintProcessedSpectra {
  input {
    String ms_two_file
    String output_file
  }
  command <<<
    crux print-processed-spectra \
      ~{ms_two_file} \
      ~{output_file}
  >>>
  parameter_meta {
    ms_two_file: ""
    output_file: ""
  }
}