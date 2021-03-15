version 1.0

task Solvebiorecipes {
  command <<<
    solvebio_recipes
  >>>
  runtime {
    docker: "quay.io/biocontainers/solvebio:2.16.0--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}