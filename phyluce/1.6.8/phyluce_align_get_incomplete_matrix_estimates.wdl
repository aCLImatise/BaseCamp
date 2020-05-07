version 1.0

task PhyluceAlignGetIncompleteMatrixEstimates {
  input {
    String dbDb
    Int minMin
    Int maxMax
    String stepStep
    Array[String]+ excludeExclude
    Array[String]+ includeInclude
  }
  command <<<
    phyluce_align_get_incomplete_matrix_estimates \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""}
  >>>
}