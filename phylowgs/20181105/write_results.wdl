version 1.0

task WriteResults.py {
  input {
    Boolean includeIncludeSsmNames
    Int minMinSsms
    String? datasetDatasetName
    String? treeTreeFile
    String? treeTreeSummaryOutput
    String? mutMutListOutput
    String? mutMutAssOutput
  }
  command <<<
    write_results.py \
      ~{datasetDatasetName} \
      ~{true="--include-ssm-names" false="" includeIncludeSsmNames} \
      ~{if defined(minMinSsms) then ("--min-ssms " +  '"' + minMinSsms + '"') else ""} \
      ~{treeTreeFile} \
      ~{treeTreeSummaryOutput} \
      ~{mutMutListOutput} \
      ~{mutMutAssOutput}
  >>>
}