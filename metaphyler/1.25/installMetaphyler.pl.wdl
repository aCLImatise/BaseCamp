version 1.0

task InstallMetaphylerpl {
  command <<<
    installMetaphyler_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}