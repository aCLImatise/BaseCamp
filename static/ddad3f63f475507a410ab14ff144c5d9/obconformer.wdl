version 1.0

task Obconformer {
  input {
    String n_steps
    String geom_steps
    File var_file
  }
  command <<<
    obconformer \
      ~{n_steps} \
      ~{geom_steps} \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    n_steps: ""
    geom_steps: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}