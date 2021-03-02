version 1.0

task CactusSecondaryDatabase {
  command <<<
    cactus_secondaryDatabase
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}