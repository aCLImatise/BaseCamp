version 1.0

task GetPancreases.py {
  input {
    String organismOrganism
    String outputOutput
    String dataData
    Boolean skipSkipFilterOverlap
  }
  command <<<
    get_pancreases.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{true="--skip-filter-overlap" false="" skipSkipFilterOverlap}
  >>>
}