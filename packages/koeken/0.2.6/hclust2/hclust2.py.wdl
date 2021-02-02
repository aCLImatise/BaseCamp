version 1.0

task Hclust2py {
  command <<<
    hclust2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}