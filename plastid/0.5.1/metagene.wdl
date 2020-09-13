version 1.0

task Metagene {
  command <<<
    metagene
  >>>
  output {
    File out_stdout = stdout()
  }
}