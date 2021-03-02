version 1.0

task MygeneUtilspy {
  command <<<
    mygene_utils_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}