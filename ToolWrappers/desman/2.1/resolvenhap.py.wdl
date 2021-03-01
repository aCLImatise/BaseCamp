version 1.0

task Resolvenhappy {
  command <<<
    resolvenhap_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}