version 1.0

task GenerateEnlarge.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    generate_enlarge.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}