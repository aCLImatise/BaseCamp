version 1.0

task RNAforester {
  command <<<
    RNAforester
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}