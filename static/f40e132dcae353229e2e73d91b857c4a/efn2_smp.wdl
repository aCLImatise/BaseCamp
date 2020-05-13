version 1.0

task Efn2Smp {
  input {
    String? efn2Efn2
    String? ctCtFile
    String? outputOutputFile
  }
  command <<<
    efn2-smp \
      ~{efn2Efn2} \
      ~{ctCtFile} \
      ~{outputOutputFile}
  >>>
}