version 1.0

task CruxGetMs2Spectrum {
  input {
    String ms_two_file
  }
  command <<<
    crux get-ms2-spectrum \
      ~{ms_two_file}
  >>>
  parameter_meta {
    ms_two_file: ""
  }
}