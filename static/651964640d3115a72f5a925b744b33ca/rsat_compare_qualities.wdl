version 1.0

task RsatComparequalities {
  input {
    String compare_qualities
    String comparison_dot
    String util
    String evaluation
    String all
  }
  command <<<
    rsat compare_qualities \
      ~{compare_qualities} \
      ~{comparison_dot} \
      ~{util} \
      ~{evaluation} \
      ~{all}
  >>>
  parameter_meta {
    compare_qualities: "[1mVERSION[0m"
    comparison_dot: "[1mAUTHORS[0m"
    util: "PSSM"
    evaluation: "[1mUSAGE[0m"
    all: "[1mOPTIONS[0m"
  }
  output {
    File out_stdout = stdout()
  }
}