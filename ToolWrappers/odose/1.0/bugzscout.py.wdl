version 1.0

task Bugzscoutpy {
  command <<<
    bugzscout_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}