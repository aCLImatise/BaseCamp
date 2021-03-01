version 1.0

task Ezez4qsubVx1pl {
  input {
    String this
    String ec_dot_spec
    String as_mdot_spec
  }
  command <<<
    ezez4qsub_vx1_pl \
      ~{this} \
      ~{ec_dot_spec} \
      ~{as_mdot_spec}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    this: ""
    ec_dot_spec: ""
    as_mdot_spec: ""
  }
  output {
    File out_stdout = stdout()
  }
}