version 1.0

task Byobujanitor {
  command <<<
    byobu_janitor
  >>>
  output {
    File out_stdout = stdout()
  }
}