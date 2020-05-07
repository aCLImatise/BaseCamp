version 1.0

task MtsvTreeBuildFLAGS {
  input {
    String indexIndex
    String dumpDump
  }
  command <<<
    mtsv-tree-build FLAGS \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(dumpDump) then ("--dump " +  '"' + dumpDump + '"') else ""}
  >>>
}