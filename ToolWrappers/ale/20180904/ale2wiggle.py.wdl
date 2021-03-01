version 1.0

task Ale2wigglepy {
  command <<<
    ale2wiggle_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}