version 1.0

task GenerateRrnaUnit.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    generate_rrna_unit.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}