version 1.0

task GenerateOverlappingGenes.py {
  input {
    String inputInputGenes
    String headHead
    String outputOutput
  }
  command <<<
    generate_overlapping_genes.py \
      ~{if defined(inputInputGenes) then ("--input_genes " +  '"' + inputInputGenes + '"') else ""} \
      ~{if defined(headHead) then ("--head " +  '"' + headHead + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}