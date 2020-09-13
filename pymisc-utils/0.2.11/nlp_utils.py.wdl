version 1.0

task NlpUtilspy {
  command <<<
    nlp_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}