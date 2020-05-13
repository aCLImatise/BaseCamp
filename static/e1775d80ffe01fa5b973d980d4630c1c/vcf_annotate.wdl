version 1.0

task VcfAnnotate {
  input {
    File annotationsAnnotations
    String columnsColumns
    Boolean descriptionDescription
    Boolean fillFillAcAn
    Boolean fillFillHWe
    Boolean fillFillIcf
    Boolean fillFillType
    Boolean filterFilter
    Boolean hardHardFilter
    Boolean normalizeNormalizeAlleles
    String removeRemove
  }
  command <<<
    vcf-annotate \
      ~{if defined(annotationsAnnotations) then ("--annotations " +  '"' + annotationsAnnotations + '"') else ""} \
      ~{if defined(columnsColumns) then ("--columns " +  '"' + columnsColumns + '"') else ""} \
      ~{true="--description" false="" descriptionDescription} \
      ~{true="--fill-AC-AN" false="" fillFillAcAn} \
      ~{true="--fill-HWE" false="" fillFillHWe} \
      ~{true="--fill-ICF" false="" fillFillIcf} \
      ~{true="--fill-type" false="" fillFillType} \
      ~{true="--filter" false="" filterFilter} \
      ~{true="--hard-filter" false="" hardHardFilter} \
      ~{true="--normalize-alleles" false="" normalizeNormalizeAlleles} \
      ~{if defined(removeRemove) then ("--remove " +  '"' + removeRemove + '"') else ""}
  >>>
}