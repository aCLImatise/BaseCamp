version 1.0

task RunMepl {
  command <<<
    runMe_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}