version 1.0

task GenerateTumorGenes.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    generate_tumor-genes.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}