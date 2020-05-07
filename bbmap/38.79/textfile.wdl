version 1.0

task Textfile.sh {
  input {
    File? fileFile
    String? startStartLine
    String? stopStopLine
  }
  command <<<
    textfile.sh \
      ~{fileFile} \
      ~{startStartLine} \
      ~{stopStopLine}
  >>>
}