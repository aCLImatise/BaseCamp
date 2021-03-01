version 1.0

task ProBAMMzidpy {
  command <<<
    proBAM_mzid_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}