version 1.0

task GetCancerGenes.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    get_cancer-genes.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}