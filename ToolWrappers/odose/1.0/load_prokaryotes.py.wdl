version 1.0

task LoadProkaryotespy {
  command <<<
    load_prokaryotes_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}