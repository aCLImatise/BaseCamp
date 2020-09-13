version 1.0

task TemplateForQsub {
  command <<<
    template_for_qsub
  >>>
  output {
    File out_stdout = stdout()
  }
}