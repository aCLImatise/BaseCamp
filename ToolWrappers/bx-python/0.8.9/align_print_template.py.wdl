version 1.0

task AlignPrintTemplatepy {
  command <<<
    align_print_template_py
  >>>
  output {
    File out_stdout = stdout()
  }
}