version 1.0

task RunPastaGuipy {
  command <<<
    run_pasta_gui_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}