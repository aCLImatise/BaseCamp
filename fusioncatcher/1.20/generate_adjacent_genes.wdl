version 1.0

task GenerateAdjacentGenes.py {
  input {
    String inputInputGenes
    String outputOutput
  }
  command <<<
    generate_adjacent_genes.py \
      ~{if defined(inputInputGenes) then ("--input_genes " +  '"' + inputInputGenes + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}