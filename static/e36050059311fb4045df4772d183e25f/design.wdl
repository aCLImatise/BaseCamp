version 1.0

task Design {
  input {
    String? ctCtStructureFile
  }
  command <<<
    design \
      ~{ctCtStructureFile}
  >>>
}