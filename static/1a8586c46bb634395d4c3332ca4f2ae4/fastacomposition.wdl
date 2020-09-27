version 1.0

task Fastacomposition {
  command <<<
    fastacomposition
  >>>
  output {
    File out_stdout = stdout()
  }
}