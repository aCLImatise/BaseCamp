version 1.0

task MergeassemblyVALUE1 {
  input {
    String merge_assembly
    String? option_one
    String? value_one
  }
  command <<<
    mergeassembly VALUE1 \
      ~{merge_assembly} \
      ~{option_one} \
      ~{value_one}
  >>>
  parameter_meta {
    merge_assembly: ""
    option_one: ""
    value_one: ""
  }
}