version 1.0

task SsuEslSelectn {
  input {
    Boolean optionsOptions
    String? nN
    File? fileFile
  }
  command <<<
    ssu-esl-selectn \
      ~{nN} \
      ~{true="-options" false="" optionsOptions} \
      ~{fileFile}
  >>>
}