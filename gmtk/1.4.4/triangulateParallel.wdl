version 1.0

task TriangulateParallel {
  input {
    Boolean strfileStrfile
    Boolean anytimeAnytimeTriangulate
    Boolean boundaryBoundaryAnytime
    Boolean triangulateTriangulateAnytime
    Boolean otherOther
  }
  command <<<
    triangulateParallel \
      ~{true="-strFile" false="" strfileStrfile} \
      ~{true="-anyTimeTriangulate" false="" anytimeAnytimeTriangulate} \
      ~{true="-boundaryAnyTime" false="" boundaryBoundaryAnytime} \
      ~{true="-triangulateAnyTime" false="" triangulateTriangulateAnytime} \
      ~{true="-other" false="" otherOther}
  >>>
}