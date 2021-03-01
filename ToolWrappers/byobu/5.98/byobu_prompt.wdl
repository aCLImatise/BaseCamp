version 1.0

task Byobuprompt {
  command <<<
    byobu_prompt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}