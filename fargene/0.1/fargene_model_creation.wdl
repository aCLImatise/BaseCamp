version 1.0

task FargeneModelCreation {
  command <<<
    fargene_model_creation
  >>>
  output {
    File out_stdout = stdout()
  }
}