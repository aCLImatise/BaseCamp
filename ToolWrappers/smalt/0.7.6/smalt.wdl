version 1.0

task Smalt {
  command <<<
    smalt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}