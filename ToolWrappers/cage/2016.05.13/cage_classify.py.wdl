version 1.0

task Cageclassifypy {
  command <<<
    cage_classify_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}