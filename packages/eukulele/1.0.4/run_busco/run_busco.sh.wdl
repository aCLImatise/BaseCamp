version 1.0

task RunBuscosh {
  input {
    Int python_three
    String busco_configurator_do_tpy
    String config_dot_in_idot_default
    String your_config_do_tini
  }
  command <<<
    run_busco_sh \
      ~{python_three} \
      ~{busco_configurator_do_tpy} \
      ~{config_dot_in_idot_default} \
      ~{your_config_do_tini}
  >>>
  runtime {
    docker: "quay.io/biocontainers/eukulele:1.0.4--pyhcb32578_0"
  }
  parameter_meta {
    python_three: ""
    busco_configurator_do_tpy: ""
    config_dot_in_idot_default: ""
    your_config_do_tini: ""
  }
  output {
    File out_stdout = stdout()
  }
}