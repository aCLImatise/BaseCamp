version 1.0

task Convert2snns {
  input {
    String? controlControlFile
  }
  command <<<
    convert2snns \
      ~{controlControlFile}
  >>>
}