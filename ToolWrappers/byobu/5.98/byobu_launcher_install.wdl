version 1.0

task Byobulauncherinstall {
  command <<<
    byobu_launcher_install
  >>>
  output {
    File out_stdout = stdout()
  }
}