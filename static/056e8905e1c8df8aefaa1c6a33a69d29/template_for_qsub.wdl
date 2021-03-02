version 1.0

task TemplateForQsub {
  command <<<
    template_for_qsub
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}