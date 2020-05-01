version 1.0

task Vcfannotategenotypes {
  input {
    String? annotationAnnotationTag
    String? vcfVcfFile
    String? vcfVcfFile
  }
  command <<<
    vcfannotategenotypes \
      ~{annotationAnnotationTag} \
      ~{vcfVcfFile} \
      ~{vcfVcfFile}
  >>>
}