version 1.0

task Obconformer {
  input {
    String n_steps
    String geom_steps
    File file
  }
  command <<<
    obconformer \
      ~{n_steps} \
      ~{geom_steps} \
      ~{file}
  >>>
  parameter_meta {
    n_steps: ""
    geom_steps: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}