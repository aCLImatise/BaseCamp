version 1.0

task Mkdna6idx {
  input {
    String index_name
  }
  command <<<
    mkdna6idx \
      ~{index_name}
  >>>
  parameter_meta {
    index_name: ""
  }
}