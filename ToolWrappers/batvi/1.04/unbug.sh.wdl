version 1.0

task Unbugsh {
  command <<<
    unbug_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}