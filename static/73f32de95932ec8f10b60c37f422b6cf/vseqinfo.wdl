version 1.0

task Vseqinfo {
  input {
    String? indexIndexName
  }
  command <<<
    vseqinfo \
      ~{indexIndexName}
  >>>
}