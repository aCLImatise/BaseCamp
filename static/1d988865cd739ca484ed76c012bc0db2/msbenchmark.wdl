version 1.0

task Msbenchmark {
  input {
    String? var_0
    String spectra_vertical_line_chromatograms_vertical_line_ramp_adapter_vertical_line_ramp
    String binary_vertical_lineno_binary
    File filename
    String? another
    String? var_5
  }
  command <<<
    msbenchmark \
      ~{spectra_vertical_line_chromatograms_vertical_line_ramp_adapter_vertical_line_ramp} \
      ~{binary_vertical_lineno_binary} \
      ~{filename} \
      ~{another} \
      ~{var_5} \
      ~{if defined(var_0) then ("--filter " +  '"' + var_0 + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    spectra_vertical_line_chromatograms_vertical_line_ramp_adapter_vertical_line_ramp: ""
    binary_vertical_lineno_binary: ""
    filename: ""
    another: ""
    var_5: ""
  }
}