version 1.0

task Wheezytemplate {
  command <<<
    wheezy_template
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}