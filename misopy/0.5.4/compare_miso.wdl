version 1.0

task CompareMiso {
  input {
    String compareCompareSamples
    String comparisonComparisonLabels
    String useUseCompressed
  }
  command <<<
    compare_miso \
      ~{if defined(compareCompareSamples) then ("--compare-samples " +  '"' + compareCompareSamples + '"') else ""} \
      ~{if defined(comparisonComparisonLabels) then ("--comparison-labels " +  '"' + comparisonComparisonLabels + '"') else ""} \
      ~{if defined(useUseCompressed) then ("--use-compressed " +  '"' + useUseCompressed + '"') else ""}
  >>>
}