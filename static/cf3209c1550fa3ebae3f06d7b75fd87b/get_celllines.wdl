version 1.0

task GetCelllines.py {
  input {
    String organismOrganism
    String outputOutput
    String dataData1
    String dataData2
    Boolean skipSkipFilterOverlap
  }
  command <<<
    get_celllines.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(dataData1) then ("--data1 " +  '"' + dataData1 + '"') else ""} \
      ~{if defined(dataData2) then ("--data2 " +  '"' + dataData2 + '"') else ""} \
      ~{true="--skip-filter-overlap" false="" skipSkipFilterOverlap}
  >>>
}