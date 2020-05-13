version 1.0

task Generate1000genomes.py {
  input {
    String organismOrganism
    String outputOutput
    Boolean skipSkipFilterOverlap
  }
  command <<<
    generate_1000genomes.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--skip-filter-overlap" false="" skipSkipFilterOverlap}
  >>>
}