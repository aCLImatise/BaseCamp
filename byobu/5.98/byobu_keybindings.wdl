version 1.0

task Byobukeybindings {
  command <<<
    byobu_keybindings
  >>>
  output {
    File out_stdout = stdout()
  }
}