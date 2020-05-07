version 1.0

task KallistoInspect {
  input {
    String? indexIndexFile
  }
  command <<<
    kallisto inspect \
      ~{indexIndexFile}
  >>>
}