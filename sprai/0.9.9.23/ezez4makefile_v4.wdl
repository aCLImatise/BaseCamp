version 1.0

task Ezez4makefileV4.pl {
  input {
    String var_0
    String var_1
    String as_mdot_spec
    String or
    String var_4
    String var_5
  }
  command <<<
    ezez4makefile_v4.pl \
      ~{var_0} \
      ~{var_1} \
      ~{as_mdot_spec} \
      ~{or} \
      ~{var_4} \
      ~{var_5}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    as_mdot_spec: ""
    or: ""
    var_4: ""
    var_5: ""
  }
}