version 1.0

task ChromosomerFragmentmapbedMap {
  input {
    String? mapMap
    String? outputOutput
  }
  command <<<
    chromosomer fragmentmapbed map \
      ~{mapMap} \
      ~{outputOutput}
  >>>
}