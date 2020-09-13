version 1.0

task LoadProkaryotes {
  command <<<
    load_prokaryotes
  >>>
  output {
    File out_stdout = stdout()
  }
}