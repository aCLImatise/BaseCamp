version 1.0

task GenerateNontumor.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    generate_nontumor.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}