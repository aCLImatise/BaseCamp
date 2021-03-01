version 1.0

task SamT2kpm {
  command <<<
    SamT2k_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}