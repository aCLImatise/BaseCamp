version 1.0

task BwaAln {
  input {
    Boolean yY
    String? prefixPrefix
    String? inInFq
  }
  command <<<
    bwa aln \
      ~{prefixPrefix} \
      ~{true="-Y" false="" yY} \
      ~{inInFq}
  >>>
}