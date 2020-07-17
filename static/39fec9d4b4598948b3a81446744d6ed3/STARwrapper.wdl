version 1.0

task STARwrapper.py {
  input {
    String? cpus
    String wrapper
    String for
    String running
    String star_long_dot
  }
  command <<<
    STARwrapper.py \
      ~{wrapper} \
      ~{for} \
      ~{running} \
      ~{star_long_dot} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  parameter_meta {
    cpus: "Number of threads (default: 10)"
    wrapper: ""
    for: ""
    running: ""
    star_long_dot: ""
  }
}