version 1.0

task STARwrapperpy {
  input {
    String? cpus
    String wrapper
    String for
    String running
    String star_long_dot
  }
  command <<<
    STARwrapper_py \
      ~{wrapper} \
      ~{for} \
      ~{running} \
      ~{star_long_dot} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  parameter_meta {
    cpus: ""
    wrapper: ""
    for: ""
    running: ""
    star_long_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}