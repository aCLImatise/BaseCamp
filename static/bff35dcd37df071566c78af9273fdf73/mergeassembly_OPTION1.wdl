version 1.0

task MergeassemblyOPTION1 {
  input {
    String? value_one
  }
  command <<<
    mergeassembly OPTION1 \
      ~{value_one}
  >>>
  parameter_meta {
    value_one: ""
  }
}