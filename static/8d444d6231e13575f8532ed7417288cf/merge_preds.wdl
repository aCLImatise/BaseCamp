version 1.0

task MergePreds.py {
  input {
    String combine
    String the
    String misclassified
    String samples
    String of
    String different
    String phenotypes
    Int into
    String data
    String matrices
  }
  command <<<
    merge_preds.py \
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
}