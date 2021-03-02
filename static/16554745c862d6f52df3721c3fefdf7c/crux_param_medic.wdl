version 1.0

task CruxParammedic {
  input {
    File spectrum_file
  }
  command <<<
    crux param_medic \
      ~{spectrum_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    spectrum_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}