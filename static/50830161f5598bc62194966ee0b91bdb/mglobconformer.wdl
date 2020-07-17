version 1.0

task Mglobconformer {
  input {
    String ob_conformer
    String n_steps
    String geom_steps
    File file
  }
  command <<<
    mglobconformer \
      ~{ob_conformer} \
      ~{n_steps} \
      ~{geom_steps} \
      ~{file}
  >>>
  parameter_meta {
    ob_conformer: ""
    n_steps: ""
    geom_steps: ""
    file: ""
  }
}