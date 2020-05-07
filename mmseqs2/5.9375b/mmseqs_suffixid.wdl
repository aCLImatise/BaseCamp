version 1.0

task MmseqsSuffixid {
  input {
    Boolean prefixPrefix
    Boolean mappingMappingFile
    Boolean tsvTsv
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs suffixid \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--mapping-file" false="" mappingMappingFile} \
      ~{true="--tsv" false="" tsvTsv} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}