version 1.0

task ChromosomerFragmentmapstatMap {
  input {
    String? mapMap
    String? outputOutput
  }
  command <<<
    chromosomer fragmentmapstat map \
      ~{mapMap} \
      ~{outputOutput}
  >>>
}