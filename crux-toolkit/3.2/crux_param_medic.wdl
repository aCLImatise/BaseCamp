version 1.0

task CruxParamMedic {
  input {
    String spectrum_file
  }
  command <<<
    crux param-medic \
      ~{spectrum_file}
  >>>
  parameter_meta {
    spectrum_file: ""
  }
}