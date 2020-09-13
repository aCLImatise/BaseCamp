version 1.0

task HgBbiDbLink {
  command <<<
    hgBbiDbLink
  >>>
  output {
    File out_stdout = stdout()
  }
}