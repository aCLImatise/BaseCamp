version 1.0

task Nanocomporebak {
  command <<<
    nanocompore_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}