version 1.0

task DrawOutput file {
  input {
    String? ctCtFile
    String? outputOutputFile
  }
  command <<<
    draw output file \
      ~{ctCtFile} \
      ~{outputOutputFile}
  >>>
}