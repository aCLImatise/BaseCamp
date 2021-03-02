version 1.0

task CruxPsmconvertCruxoutput {
  input {
    String crux
    String psm_convert
    File input_psm_file
  }
  command <<<
    crux psm_convert crux_output_ \
      ~{crux} \
      ~{psm_convert} \
      ~{input_psm_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    psm_convert: ""
    input_psm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}