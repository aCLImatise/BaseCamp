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
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
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