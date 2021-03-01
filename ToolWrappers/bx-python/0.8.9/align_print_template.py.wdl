version 1.0

task AlignPrintTemplatepy {
  command <<<
    align_print_template_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}