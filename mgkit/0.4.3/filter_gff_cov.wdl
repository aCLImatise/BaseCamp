version 1.0

task FilterGffCov {
  input {
    File referenceReference
    Boolean strandStrandSpecific
    Boolean sortedSorted
    Float minMinCoverage
    Boolean renameRename
    Boolean progressProgress
  }
  command <<<
    filter-gff cov \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--strand-specific" false="" strandStrandSpecific} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{true="--rename" false="" renameRename} \
      ~{true="--progress" false="" progressProgress}
  >>>
}