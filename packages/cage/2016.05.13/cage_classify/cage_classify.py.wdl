version 1.0

task Cageclassifypy {
  command <<<
    cage_classify_py
  >>>
  output {
    File out_stdout = stdout()
  }
}