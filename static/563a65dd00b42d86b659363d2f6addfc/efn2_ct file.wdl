version 1.0

task Efn2Ct file {
  input {
    String? outputOutputFile
  }
  command <<<
    efn2 ct file \
      ~{outputOutputFile}
  >>>
}