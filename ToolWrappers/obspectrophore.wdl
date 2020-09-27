version 1.0

task Obspectrophore {
  input {
    Boolean? _input_file
    Boolean? _normalization
    Boolean? _accuracy
    Boolean? _stereo_treatment
    Boolean? _resolution
    Boolean? _implementation_details
    String? parameters
  }
  command <<<
    obspectrophore \
      ~{parameters} \
      ~{if (_input_file) then "-i" else ""} \
      ~{if (_normalization) then "-n" else ""} \
      ~{if (_accuracy) then "-a" else ""} \
      ~{if (_stereo_treatment) then "-s" else ""} \
      ~{if (_resolution) then "-r" else ""} \
      ~{if (_implementation_details) then "-u" else ""}
  >>>
  parameter_meta {
    _input_file: "[required]: input file"
    _normalization: "[optional]: normalization"
    _accuracy: "[optional]: accuracy"
    _stereo_treatment: "[optional]: stereo treatment"
    _resolution: "[optional]: resolution"
    _implementation_details: "[optional]: implementation details"
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}