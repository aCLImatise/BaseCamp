version 1.0

task Byobudisable {
  command <<<
    byobu_disable
  >>>
  output {
    File out_stdout = stdout()
  }
}