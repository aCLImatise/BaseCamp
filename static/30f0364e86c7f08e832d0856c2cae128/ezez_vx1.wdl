version 1.0

task EzezVx1.pl {
  input {
    String this
    String ec_dot_spec
    String as_mdot_spec
  }
  command <<<
    ezez_vx1.pl \
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