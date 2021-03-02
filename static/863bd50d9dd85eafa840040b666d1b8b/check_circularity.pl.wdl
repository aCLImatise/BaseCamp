version 1.0

task CheckCircularitypl {
  input {
    String check_circu_rarity_do_tpl
  }
  command <<<
    check_circularity_pl \
      ~{check_circu_rarity_do_tpl}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check_circu_rarity_do_tpl: ""
  }
  output {
    File out_stdout = stdout()
  }
}