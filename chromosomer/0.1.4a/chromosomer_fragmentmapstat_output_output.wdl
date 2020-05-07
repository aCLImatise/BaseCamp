version 1.0

task ChromosomerFragmentmapstatOutputOutput {
  input {
    String? mapMap
    String? outputOutput
  }
  command <<<
    chromosomer fragmentmapstat output output \
      ~{mapMap} \
      ~{outputOutput}
  >>>
}