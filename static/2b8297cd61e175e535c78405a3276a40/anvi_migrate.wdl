version 1.0

task Anvimigrate {
  command <<<
    anvi_migrate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}