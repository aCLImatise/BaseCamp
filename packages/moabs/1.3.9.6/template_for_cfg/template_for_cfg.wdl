version 1.0

task TemplateForCfg {
  command <<<
    template_for_cfg
  >>>
  output {
    File out_stdout = stdout()
  }
}