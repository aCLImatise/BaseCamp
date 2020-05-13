version 1.0

task RapmapQuasimap {
  input {
    String? rapRapMap
  }
  command <<<
    rapmap quasimap \
      ~{rapRapMap}
  >>>
}