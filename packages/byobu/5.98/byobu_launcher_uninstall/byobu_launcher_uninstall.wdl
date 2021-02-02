version 1.0

task Byobulauncheruninstall {
  command <<<
    byobu_launcher_uninstall
  >>>
  output {
    File out_stdout = stdout()
  }
}