version 1.0

task Spectrast2spectrastIrtpy {
  input {
    Boolean? _input_file
    File? _output_file
    String? sp_lib_slash_sp_txt
  }
  command <<<
    spectrast2spectrast_irt_py \
      ~{sp_lib_slash_sp_txt} \
      ~{if (_input_file) then "-i" else ""} \
      ~{if (_output_file) then "-o" else ""}
  >>>
  parameter_meta {
    _input_file: "[--in]: input file"
    _output_file: "[--out]: output file"
    sp_lib_slash_sp_txt: ""
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}