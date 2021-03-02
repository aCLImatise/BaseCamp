version 1.0

task TemplateForCfg {
  command <<<
    template_for_cfg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}