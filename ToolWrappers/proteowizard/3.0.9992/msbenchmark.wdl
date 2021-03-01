version 1.0

task Msbenchmark {
  input {
    String? var_0
    String spectra_vertical_line_chromatograms_vertical_line_ramp_adapter_vertical_line_ramp
    String binary_vertical_lineno_binary
    File filename
    String? options
    String? another
    String? var_6
  }
  command <<<
    msbenchmark \
      ~{spectra_vertical_line_chromatograms_vertical_line_ramp_adapter_vertical_line_ramp} \
      ~{binary_vertical_lineno_binary} \
      ~{filename} \
      ~{options} \
      ~{another} \
      ~{var_6} \
      ~{if defined(var_0) then ("--filter " +  '"' + var_0 + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/proteowizard:3.0.9992"
  }
  parameter_meta {
    var_0: ""
    spectra_vertical_line_chromatograms_vertical_line_ramp_adapter_vertical_line_ramp: ""
    binary_vertical_lineno_binary: ""
    filename: ""
    options: ""
    another: ""
    var_6: ""
  }
  output {
    File out_stdout = stdout()
  }
}