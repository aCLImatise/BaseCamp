version 1.0

task ProBAMMzTabpy {
  command <<<
    proBAM_mzTab_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}