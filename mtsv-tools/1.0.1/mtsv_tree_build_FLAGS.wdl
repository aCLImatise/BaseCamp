version 1.0

task MtsvTreeBuildFLAGS {
  input {
    String? index
    String? dump
  }
  command <<<
    mtsv-tree-build FLAGS \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""}
  >>>
  parameter_meta {
    index: ""
    dump: ""
  }
}