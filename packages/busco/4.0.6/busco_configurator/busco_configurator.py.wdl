version 1.0

task BuscoConfiguratorpy {
  input {
    String config_dot_in_idot_default
    String your_config_do_tini
  }
  command <<<
    busco_configurator_py \
      ~{config_dot_in_idot_default} \
      ~{your_config_do_tini}
  >>>
  parameter_meta {
    config_dot_in_idot_default: ""
    your_config_do_tini: ""
  }
  output {
    File out_stdout = stdout()
  }
}