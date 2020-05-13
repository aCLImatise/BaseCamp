version 1.0

task ChimerascanRelativeBedpeToCG {
  input {
    String geneGeneAnnotation
    String outputOutput
    String? inputInput
  }
  command <<<
    chimerascan-relative-bedpe-to-CG \
      ~{inputInput} \
      ~{if defined(geneGeneAnnotation) then ("--gene-annotation " +  '"' + geneGeneAnnotation + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}