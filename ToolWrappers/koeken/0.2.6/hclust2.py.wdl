version 1.0

task Hclust2py {
  command <<<
    hclust2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}