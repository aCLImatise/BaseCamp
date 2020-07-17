version 1.0

task RgtHintEvaluation {
  input {
    Boolean? print_roc_curve
    Boolean? print_pr_curve
    File? tfbs_file
  }
  command <<<
    rgt-hint evaluation \
      ~{true="--print-roc-curve" false="" print_roc_curve} \
      ~{true="--print-pr-curve" false="" print_pr_curve} \
      ~{if defined(tfbs_file) then ("--tfbs-file " +  '"' + tfbs_file + '"') else ""}
  >>>
  parameter_meta {
    print_roc_curve: "If set, HINT will print the receiver operating characteristic curve."
    print_pr_curve: "If set, HINT will print the precision recall curve."
    tfbs_file: ""
  }
}