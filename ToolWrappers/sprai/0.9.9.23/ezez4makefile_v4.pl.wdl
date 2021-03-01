version 1.0

task Ezez4makefileV4pl {
  input {
    String this
    String ec_dot_spec
    String as_mdot_spec
    String or
  }
  command <<<
    ezez4makefile_v4_pl \
      ~{this} \
      ~{ec_dot_spec} \
      ~{as_mdot_spec} \
      ~{or}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    this: ""
    ec_dot_spec: ""
    as_mdot_spec: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
  }
}