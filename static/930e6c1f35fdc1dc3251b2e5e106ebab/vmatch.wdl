version 1.0

task Vmatch {
  input {
    String? indexIndexName
  }
  command <<<
    vmatch \
      ~{indexIndexName}
  >>>
}