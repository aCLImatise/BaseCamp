version 1.0

task Unbugpl {
  command <<<
    unbug_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}