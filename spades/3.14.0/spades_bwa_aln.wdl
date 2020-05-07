version 1.0

task SpadesBwaAln {
  input {
    Boolean yY
    String? bwaBwa
    String? alnAln
    String? prefixPrefix
    String? inInFq
  }
  command <<<
    spades-bwa aln \
      ~{bwaBwa} \
      ~{true="-Y" false="" yY} \
      ~{alnAln} \
      ~{prefixPrefix} \
      ~{inInFq}
  >>>
}