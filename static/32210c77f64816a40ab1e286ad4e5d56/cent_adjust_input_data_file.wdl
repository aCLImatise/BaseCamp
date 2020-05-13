version 1.0

task CentAdjustInputDataFile {
  input {
    String? inputInputCenter
    String? inputInputDataFile
  }
  command <<<
    cent_adjust input_data_file \
      ~{inputInputCenter} \
      ~{inputInputDataFile}
  >>>
}