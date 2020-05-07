version 1.0

task RunRapMap.sh {
  input {
    String? quasiQuasiMap
  }
  command <<<
    RunRapMap.sh \
      ~{quasiQuasiMap}
  >>>
}