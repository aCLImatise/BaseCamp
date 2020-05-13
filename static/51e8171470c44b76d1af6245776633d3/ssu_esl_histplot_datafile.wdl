version 1.0

task SsuEslHistplotDatafile {
  input {
    Boolean optionsOptions
  }
  command <<<
    ssu-esl-histplot datafile \
      ~{true="-options" false="" optionsOptions}
  >>>
}