version 1.0

task AxtToLavpy {
  command <<<
    axt_to_lav_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}