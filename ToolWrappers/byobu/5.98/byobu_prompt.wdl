version 1.0

task Byobuprompt {
  command <<<
    byobu_prompt
  >>>
  output {
    File out_stdout = stdout()
  }
}