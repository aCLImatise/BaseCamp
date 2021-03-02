version 1.0

task Obspectrophore {
  input {
    Boolean? _input_file
    Boolean? _stereo_treatment
    Boolean? _implementation_details
    Boolean? specifies_kind_be
    Boolean? specifies_required_accuracy
    Boolean? specifies_required_resolution
    String? parameters
  }
  command <<<
    obspectrophore \
      ~{parameters} \
      ~{if (_input_file) then "-i" else ""} \
      ~{if (_stereo_treatment) then "-s" else ""} \
      ~{if (_implementation_details) then "-u" else ""} \
      ~{if (specifies_kind_be) then "-n" else ""} \
      ~{if (specifies_required_accuracy) then "-a" else ""} \
      ~{if (specifies_required_resolution) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _input_file: "[required]: input file"
    _stereo_treatment: "[optional]: stereo treatment"
    _implementation_details: "[optional]: implementation details"
    specifies_kind_be: ": Specifies the kind of normalization that should be performed.\\nValid values are (without quotes):\\nNo (default)\\nZeroMean\\nUnitStd\\nZeroMeanAndUnitStd"
    specifies_required_accuracy: ": Specifies the required accuracy expressed as the angular stepsize.\\nOnly the following discrete values are allowed:\\n1, 2, 5, 10, 15, 20 (default), 30, 36, 45, 60"
    specifies_required_resolution: ": Specifies the required resolution expressed as a real positive number.\\nThe default value is 3.0 Angstrom. Negative values or a value equal\\nto 0 generate an error message"
    parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}