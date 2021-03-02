version 1.0

task MafSplitBySrcpy {
  command <<<
    maf_split_by_src_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}