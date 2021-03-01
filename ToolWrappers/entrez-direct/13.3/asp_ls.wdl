version 1.0

task Aspls {
  command <<<
    asp_ls
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}