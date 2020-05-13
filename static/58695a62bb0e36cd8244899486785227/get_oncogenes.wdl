version 1.0

task GetOncogenes.py {
  input {
    String organismOrganism
    String outputOutput
  }
  command <<<
    get_oncogenes.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}