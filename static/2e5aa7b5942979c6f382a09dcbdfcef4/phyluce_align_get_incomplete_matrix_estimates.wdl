version 1.0

task PhyluceAlignGetIncompleteMatrixEstimates {
  input {
    String? db
    Int? min
    Int? max
    String? step
    Array[String] exclude
    Array[String] include
  }
  command <<<
    phyluce_align_get_incomplete_matrix_estimates \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "The probe.matches.sqlite database to query"
    min: "The minimum of the range to evaluate"
    max: "The maximum of the range to evaluate"
    step: "The step of the range to evaluate"
    exclude: "Taxa to exclude"
    include: "Taxa to include\\n"
  }
  output {
    File out_stdout = stdout()
  }
}