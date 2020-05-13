version 1.0

task Vmatchselect {
  input {
    String? indexIndexName
  }
  command <<<
    vmatchselect \
      ~{indexIndexName}
  >>>
}