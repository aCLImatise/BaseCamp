version 1.0

task Snoscan {
  input {
    Boolean optionsOptions
    String? rrnaRrnaSequenceFile
    String? queryQuerySequenceFile
  }
  command <<<
    snoscan \
      ~{rrnaRrnaSequenceFile} \
      ~{true="-options" false="" optionsOptions} \
      ~{queryQuerySequenceFile}
  >>>
}