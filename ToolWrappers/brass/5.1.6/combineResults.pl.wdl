version 1.0

task CombineResultspl {
  input {
    String x_ann_dot_groups
    String x_ann_dot_assembled
    String x_dot_final
    String ploidy
    String acf
    String cn_state
  }
  command <<<
    combineResults_pl \
      ~{x_ann_dot_groups} \
      ~{x_ann_dot_assembled} \
      ~{x_dot_final} \
      ~{ploidy} \
      ~{acf} \
      ~{cn_state}
  >>>
  parameter_meta {
    x_ann_dot_groups: ""
    x_ann_dot_assembled: ""
    x_dot_final: ""
    ploidy: ""
    acf: ""
    cn_state: ""
  }
  output {
    File out_stdout = stdout()
  }
}