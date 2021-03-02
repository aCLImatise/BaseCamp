version 1.0

task Obconformer {
  input {
    String n_steps
    String geom_steps
    File var_file
    String? force_field
  }
  command <<<
    obconformer \
      ~{n_steps} \
      ~{geom_steps} \
      ~{var_file} \
      ~{force_field}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openbabel:3.1.1"
  }
  parameter_meta {
    n_steps: ""
    geom_steps: ""
    var_file: ""
    force_field: ""
  }
  output {
    File out_stdout = stdout()
  }
}