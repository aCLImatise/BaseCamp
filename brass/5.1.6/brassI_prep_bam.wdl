version 1.0

task BrassIPrepBam.pl {
  input {
    Boolean includeInclude
    Boolean prefixPrefix
    Boolean normNormPanel
    Boolean manMan
    String? exampleExample
  }
  command <<<
    brassI_prep_bam.pl \
      ~{exampleExample} \
      ~{true="-include" false="" includeInclude} \
      ~{true="-prefix" false="" prefixPrefix} \
      ~{true="-norm_panel" false="" normNormPanel} \
      ~{true="-man" false="" manMan}
  >>>
}