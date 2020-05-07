version 1.0

task ChromosomerFragmentmapstatOutputMap {
  input {
    String? mapMap
    String? outputOutput
  }
  command <<<
    chromosomer fragmentmapstat output map \
      ~{mapMap} \
      ~{outputOutput}
  >>>
}