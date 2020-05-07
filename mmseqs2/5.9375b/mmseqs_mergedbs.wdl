version 1.0

task MmseqsMergedbs {
  input {
    Boolean prefixesPrefixes
    Boolean vV
  }
  command <<<
    mmseqs mergedbs \
      ~{true="--prefixes" false="" prefixesPrefixes} \
      ~{true="-v" false="" vV}
  >>>
}