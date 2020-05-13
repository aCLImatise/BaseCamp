version 1.0

task GenerateBanned.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    generate_banned.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}