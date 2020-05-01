version 1.0

task GenerateGenes.py {
  input {
    String inputInputGenes
    String inputInputGenome
    String outputOutput
  }
  command <<<
    generate_genes.py \
      ~{if defined(inputInputGenes) then ("--input_genes " +  '"' + inputInputGenes + '"') else ""} \
      ~{if defined(inputInputGenome) then ("--input_genome " +  '"' + inputInputGenome + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}