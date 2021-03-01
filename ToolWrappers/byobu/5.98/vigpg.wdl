version 1.0

task Vigpg {
  command <<<
    vigpg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}