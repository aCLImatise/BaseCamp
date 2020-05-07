version 1.0

task Vstree2tex {
  input {
    String? indexIndexName
  }
  command <<<
    vstree2tex \
      ~{indexIndexName}
  >>>
}