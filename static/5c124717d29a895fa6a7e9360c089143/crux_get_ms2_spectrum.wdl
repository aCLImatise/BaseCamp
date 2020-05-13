version 1.0

task CruxGetMs2Spectrum {
  input {
    String? ms2Ms2File
  }
  command <<<
    crux get-ms2-spectrum \
      ~{ms2Ms2File}
  >>>
}