version 1.0

task MmseqsPrefixid {
  input {
    Boolean prefixPrefix
    Boolean mappingMappingFile
    Boolean tsvTsv
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs prefixid \
      ~{true="--prefix" false="" prefixPrefix} \
      ~{true="--mapping-file" false="" mappingMappingFile} \
      ~{true="--tsv" false="" tsvTsv} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}