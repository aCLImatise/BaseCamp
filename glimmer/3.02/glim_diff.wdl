version 1.0

task GlimDiff.awk {
  input {
    String a_pred
    String b_pred
  }
  command <<<
    glim-diff.awk \
      ~{a_pred} \
      ~{b_pred}
  >>>
  parameter_meta {
    a_pred: ""
    b_pred: ""
  }
}