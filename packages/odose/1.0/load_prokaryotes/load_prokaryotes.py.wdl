version 1.0

task LoadProkaryotespy {
  command <<<
    load_prokaryotes_py
  >>>
  output {
    File out_stdout = stdout()
  }
}