version 1.0

task Mixturepy {
  command <<<
    mixture_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}