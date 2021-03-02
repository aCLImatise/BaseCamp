version 1.0

task Subseqpy {
  command <<<
    subseq_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}