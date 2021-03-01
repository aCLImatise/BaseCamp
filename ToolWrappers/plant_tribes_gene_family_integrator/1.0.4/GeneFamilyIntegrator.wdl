version 1.0

task GeneFamilyIntegrator {
  command <<<
    GeneFamilyIntegrator
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}