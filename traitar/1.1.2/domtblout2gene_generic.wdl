version 1.0

task Domtblout2geneGeneric.py {
  input {
    String? generateGenerate
    String? summarySummary
    String? matrixMatrix
    String? fromFrom
    String? theThe
    String? filteredFiltered
    String? bestBest
    String? hmmerHmmer
    String? annotationAnnotation
    File? filesFiles
  }
  command <<<
    domtblout2gene_generic.py \
      ~{generateGenerate} \
      ~{summarySummary} \
      ~{matrixMatrix} \
      ~{fromFrom} \
      ~{theThe} \
      ~{filteredFiltered} \
      ~{bestBest} \
      ~{hmmerHmmer} \
      ~{annotationAnnotation} \
      ~{filesFiles}
  >>>
}