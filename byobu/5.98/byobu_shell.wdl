version 1.0

task Byobushell {
  command <<<
    byobu_shell
  >>>
  output {
    File out_stdout = stdout()
  }
}