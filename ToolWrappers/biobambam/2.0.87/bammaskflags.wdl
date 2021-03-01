version 1.0

task Bammaskflags {
  command <<<
    bammaskflags
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}