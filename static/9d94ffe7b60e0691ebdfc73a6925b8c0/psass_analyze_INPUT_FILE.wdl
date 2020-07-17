version 1.0

task PsassAnalyzeINPUTFILE {
  input {
    String output_file
  }
  command <<<
    psass analyze INPUT_FILE \
      ~{output_file}
  >>>
  parameter_meta {
    output_file: ""
  }
}