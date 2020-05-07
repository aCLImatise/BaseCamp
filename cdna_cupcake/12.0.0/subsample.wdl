version 1.0

task Subsample.py {
  input {
    String byBy
    String iterationsIterations
    String rangeRange
    Int minMinFlCount
    String stepStep
  }
  command <<<
    subsample.py \
      ~{if defined(byBy) then ("--by " +  '"' + byBy + '"') else ""} \
      ~{if defined(iterationsIterations) then ("--iterations " +  '"' + iterationsIterations + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{if defined(minMinFlCount) then ("--min_fl_count " +  '"' + minMinFlCount + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""}
  >>>
}