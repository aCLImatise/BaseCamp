version 1.0

task AddGapGene.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    add_gap_gene.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}