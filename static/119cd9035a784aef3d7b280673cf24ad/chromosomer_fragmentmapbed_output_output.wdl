version 1.0

task ChromosomerFragmentmapbedOutputOutput {
  input {
    String? mapMap
    String? outputOutput
  }
  command <<<
    chromosomer fragmentmapbed output output \
      ~{mapMap} \
      ~{outputOutput}
  >>>
}