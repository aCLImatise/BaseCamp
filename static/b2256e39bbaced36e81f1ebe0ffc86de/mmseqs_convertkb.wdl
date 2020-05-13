version 1.0

task MmseqsConvertkb {
  input {
    Boolean mappingMappingFile
    Boolean kbKbColumns
    Boolean vV
    String? uniprotkbUniprotkbFile
    String? uniprotkbUniprotkbDb
  }
  command <<<
    mmseqs convertkb \
      ~{uniprotkbUniprotkbFile} \
      ~{true="--mapping-file" false="" mappingMappingFile} \
      ~{true="--kb-columns" false="" kbKbColumns} \
      ~{true="-v" false="" vV} \
      ~{uniprotkbUniprotkbDb}
  >>>
}