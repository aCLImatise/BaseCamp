version 1.0

task Byobudisableprompt {
  command <<<
    byobu_disable_prompt
  >>>
  output {
    File out_stdout = stdout()
  }
}