version 1.0

task RNAzpm {
  command <<<
    RNAz_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}