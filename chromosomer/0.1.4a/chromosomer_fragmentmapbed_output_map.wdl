version 1.0

task ChromosomerFragmentmapbedOutputMap {
  input {
    String? mapMap
    String? outputOutput
  }
  command <<<
    chromosomer fragmentmapbed output map \
      ~{mapMap} \
      ~{outputOutput}
  >>>
}