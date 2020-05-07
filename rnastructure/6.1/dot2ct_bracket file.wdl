version 1.0

task Dot2ctBracket file {
  input {
    String? ctCtFile
  }
  command <<<
    dot2ct bracket file \
      ~{ctCtFile}
  >>>
}