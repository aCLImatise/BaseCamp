version 1.0

task GenerateHealthy.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    generate_healthy.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}