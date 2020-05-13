version 1.0

task Mkdna6idx {
  input {
    String? indexIndexName
  }
  command <<<
    mkdna6idx \
      ~{indexIndexName}
  >>>
}