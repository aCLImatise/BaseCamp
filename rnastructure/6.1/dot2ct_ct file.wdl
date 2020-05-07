version 1.0

task Dot2ctCt file {
  input {
    String? bracketBracketFile
    String? ctCtFile
  }
  command <<<
    dot2ct ct file \
      ~{bracketBracketFile} \
      ~{ctCtFile}
  >>>
}