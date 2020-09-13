version 1.0

task CactusSecondaryDatabase {
  command <<<
    cactus_secondaryDatabase
  >>>
  output {
    File out_stdout = stdout()
  }
}