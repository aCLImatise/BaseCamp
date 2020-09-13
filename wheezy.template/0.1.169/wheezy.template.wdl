version 1.0

task Wheezytemplate {
  command <<<
    wheezy_template
  >>>
  output {
    File out_stdout = stdout()
  }
}