version 1.0

task FargeneModelCreation {
  command <<<
    fargene_model_creation
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}