version 1.0

task MergePredspy {
  input {
    String combine
    String the
    String misclassified
    String samples
    String of
    String different
    String phenotypes
    String into
    String data
    String matrices
  }
  command <<<
    merge_preds_py \
      ~{combine} \
      ~{the} \
      ~{misclassified} \
      ~{samples} \
      ~{of} \
      ~{different} \
      ~{phenotypes} \
      ~{into} \
      ~{data} \
      ~{matrices}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    combine: ""
    the: ""
    misclassified: ""
    samples: ""
    of: ""
    different: ""
    phenotypes: ""
    into: ""
    data: ""
    matrices: ""
  }
  output {
    File out_stdout = stdout()
  }
}