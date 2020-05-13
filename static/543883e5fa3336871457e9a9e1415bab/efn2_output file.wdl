version 1.0

task Efn2Output file {
  input {
    String? ctCtFile
    String? outputOutputFile
  }
  command <<<
    efn2 output file \
      ~{ctCtFile} \
      ~{outputOutputFile}
  >>>
}