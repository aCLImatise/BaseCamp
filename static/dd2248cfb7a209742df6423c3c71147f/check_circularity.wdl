version 1.0

task CheckCircularity.pl {
  input {
    String check_circu_rarity_do_tpl
  }
  command <<<
    check_circularity.pl \
      ~{check_circu_rarity_do_tpl}
  >>>
  parameter_meta {
    check_circu_rarity_do_tpl: ""
  }
}