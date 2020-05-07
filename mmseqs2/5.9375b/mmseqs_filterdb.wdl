version 1.0

task MmseqsFilterdb {
  input {
    Boolean addAddSelfMatches
    Boolean filterFilterColumn
    Boolean columnColumnToTake
    Boolean filterFilterRegex
    Boolean positivePositiveFilter
    Boolean filterFilterFile
    Boolean beatsBeatsFirst
    Boolean mappingMappingFile
    Boolean trimTrimToOneColumn
    Boolean extractExtractLines
    Boolean comparisonComparisonOperator
    Boolean comparisonComparisonValue
    Boolean sortSortEntries
    Boolean joinJoinDb
    Boolean computeComputePositions
    Boolean transitiveTransitiveReplace
    Boolean threadsThreads
    Boolean vV
  }
  command <<<
    mmseqs filterdb \
      ~{true="--add-self-matches" false="" addAddSelfMatches} \
      ~{true="--filter-column" false="" filterFilterColumn} \
      ~{true="--column-to-take" false="" columnColumnToTake} \
      ~{true="--filter-regex" false="" filterFilterRegex} \
      ~{true="--positive-filter" false="" positivePositiveFilter} \
      ~{true="--filter-file" false="" filterFilterFile} \
      ~{true="--beats-first" false="" beatsBeatsFirst} \
      ~{true="--mapping-file" false="" mappingMappingFile} \
      ~{true="--trim-to-one-column" false="" trimTrimToOneColumn} \
      ~{true="--extract-lines" false="" extractExtractLines} \
      ~{true="--comparison-operator" false="" comparisonComparisonOperator} \
      ~{true="--comparison-value" false="" comparisonComparisonValue} \
      ~{true="--sort-entries" false="" sortSortEntries} \
      ~{true="--join-db" false="" joinJoinDb} \
      ~{true="--compute-positions" false="" computeComputePositions} \
      ~{true="--transitive-replace" false="" transitiveTransitiveReplace} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="-v" false="" vV}
  >>>
}