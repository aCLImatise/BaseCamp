version 1.0

task Byobuenableprompt {
  command <<<
    byobu_enable_prompt
  >>>
  output {
    File out_stdout = stdout()
  }
}