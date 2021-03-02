version 1.0

task InstallMetaphylerpl {
  command <<<
    installMetaphyler_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}