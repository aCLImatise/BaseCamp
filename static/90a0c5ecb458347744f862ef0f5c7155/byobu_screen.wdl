version 1.0

task Byobuscreen {
  command <<<
    byobu_screen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}