version 1.0

task RunMepl {
  command <<<
    runMe_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}