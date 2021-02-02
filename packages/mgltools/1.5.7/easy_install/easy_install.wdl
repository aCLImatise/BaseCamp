version 1.0

task EasyInstall {
  command <<<
    easy_install
  >>>
  output {
    File out_stdout = stdout()
  }
}