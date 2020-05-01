version 1.0

task FixTri.sh {
  input {
    String? triTriFile
  }
  command <<<
    fixTri.sh \
      ~{triTriFile}
  >>>
}