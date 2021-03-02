version 1.0

task Spectrast2spectrastIrtpy {
  input {
    Boolean? _input_file
    File? _output_file
  }
  command <<<
    spectrast2spectrast_irt_py \
      ~{if (_input_file) then "-i" else ""} \
      ~{if (_output_file) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _input_file: "[--in]: input file"
    _output_file: "[--out]: output file"
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}