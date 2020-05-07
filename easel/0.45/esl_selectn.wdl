version 1.0

task EslSelectn {
  input {
    Boolean optionsOptions
    String? nN
    File? fileFile
  }
  command <<<
    esl-selectn \
      ~{nN} \
      ~{true="-options" false="" optionsOptions} \
      ~{fileFile}
  >>>
}