version 1.0

task AnnotFilterRuleLib {
  command <<<
    AnnotFilterRuleLib
  >>>
  output {
    File out_stdout = stdout()
  }
}