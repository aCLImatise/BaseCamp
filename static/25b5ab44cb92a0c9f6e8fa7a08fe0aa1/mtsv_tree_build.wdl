version 1.0

task MtsvTreeBuild {
  input {
    Boolean vV
    String indexIndex
    String dumpDump
  }
  command <<<
    mtsv-tree-build \
      ~{true="-v" false="" vV} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(dumpDump) then ("--dump " +  '"' + dumpDump + '"') else ""}
  >>>
}