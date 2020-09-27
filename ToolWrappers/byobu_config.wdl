version 1.0

task Byobuconfig {
  command <<<
    byobu_config
  >>>
  output {
    File out_stdout = stdout()
  }
}