version 1.0

task Makefileam {
  command <<<
    Makefile_am
  >>>
  output {
    File out_stdout = stdout()
  }
}