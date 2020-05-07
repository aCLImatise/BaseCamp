version 1.0

task KseqCount {
  input {
    Boolean aA
    File? filenameFilename
  }
  command <<<
    kseq_count \
      ~{filenameFilename} \
      ~{true="-a" false="" aA}
  >>>
}