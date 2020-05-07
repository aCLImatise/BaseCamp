version 1.0

task Hisat2Inspect {
  input {
    Boolean largeLargeIndex
    Boolean aA
    Boolean sS
    Boolean nN
    Boolean snpSnp
    Boolean ssSs
    Boolean ssSsAll
    Boolean exonExon
    Boolean eE
    Boolean vV
  }
  command <<<
    hisat2-inspect \
      ~{true="--large-index" false="" largeLargeIndex} \
      ~{true="-a" false="" aA} \
      ~{true="-s" false="" sS} \
      ~{true="-n" false="" nN} \
      ~{true="--snp" false="" snpSnp} \
      ~{true="--ss" false="" ssSs} \
      ~{true="--ss-all" false="" ssSsAll} \
      ~{true="--exon" false="" exonExon} \
      ~{true="-e" false="" eE} \
      ~{true="-v" false="" vV}
  >>>
}