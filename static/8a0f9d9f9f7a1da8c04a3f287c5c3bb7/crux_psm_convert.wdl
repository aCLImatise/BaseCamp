version 1.0

task CruxPsmConvert {
  input {
    String input_psm_file
    String output_format
  }
  command <<<
    crux psm-convert \
      ~{input_psm_file} \
      ~{output_format}
  >>>
  parameter_meta {
    input_psm_file: ""
    output_format: ""
  }
}