version 1.0

task GenerateTcga.py {
  input {
    String organismOrganism
    String outputOutput
    Boolean skipSkipFilterOverlap
  }
  command <<<
    generate_tcga.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--skip-filter-overlap" false="" skipSkipFilterOverlap}
  >>>
}