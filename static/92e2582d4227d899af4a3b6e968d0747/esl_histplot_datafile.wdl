version 1.0

task EslHistplotDatafile {
  input {
    Boolean optionsOptions
  }
  command <<<
    esl-histplot datafile \
      ~{true="-options" false="" optionsOptions}
  >>>
}