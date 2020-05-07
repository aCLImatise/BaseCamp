version 1.0

task SentieonBwaAln {
  input {
    Boolean yY
    String? bwaBwa
    String? alnAln
    String? prefixPrefix
    String? inInFq
  }
  command <<<
    sentieon-bwa aln \
      ~{bwaBwa} \
      ~{true="-Y" false="" yY} \
      ~{alnAln} \
      ~{prefixPrefix} \
      ~{inInFq}
  >>>
}