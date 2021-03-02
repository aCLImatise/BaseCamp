version 1.0

task NlpUtilspy {
  command <<<
    nlp_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}