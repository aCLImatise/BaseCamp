version 1.0

task AnnotFilterRuleLib {
  command <<<
    AnnotFilterRuleLib
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}