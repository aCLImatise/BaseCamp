version 1.0

task CentAdjustInputCenter {
  input {
    String? inputInputDataFile
  }
  command <<<
    cent_adjust input_center \
      ~{inputInputDataFile}
  >>>
}