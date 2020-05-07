version 1.0

task PaladinIndex {
  input {
    Boolean fF
    Boolean rR
    String? referenceReferenceFastA
    String? annotationAnnotationGff
  }
  command <<<
    paladin index \
      ~{referenceReferenceFastA} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{annotationAnnotationGff}
  >>>
}