version 1.0

task PlanemoCondaLintDirectories {
  input {
    String plane_mo
    String cond_a_lint
    String recipe_dir
  }
  command <<<
    planemo conda_lint directories_ \
      ~{plane_mo} \
      ~{cond_a_lint} \
      ~{recipe_dir}
  >>>
  runtime {
    docker: "quay.io/biocontainers/planemo:0.74.3--py_0"
  }
  parameter_meta {
    plane_mo: ""
    cond_a_lint: ""
    recipe_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}