version 1.0

task Ezez4qsubVx1.pl {
  input {
    String this
    String ec_dot_spec
    String as_mdot_spec
  }
  command <<<
    ezez4qsub_vx1.pl \
      ~{this} \
      ~{ec_dot_spec} \
      ~{as_mdot_spec}
  >>>
  parameter_meta {
    this: ""
    ec_dot_spec: ""
    as_mdot_spec: ""
  }
}