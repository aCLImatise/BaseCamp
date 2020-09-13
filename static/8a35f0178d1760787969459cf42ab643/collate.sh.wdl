version 1.0

task Collatesh {
  command <<<
    collate_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}