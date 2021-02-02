version 1.0

task Makefilein {
  command <<<
    Makefile_in
  >>>
  output {
    File out_stdout = stdout()
  }
}