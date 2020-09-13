version 1.0

task Anvimigrate {
  command <<<
    anvi_migrate
  >>>
  output {
    File out_stdout = stdout()
  }
}