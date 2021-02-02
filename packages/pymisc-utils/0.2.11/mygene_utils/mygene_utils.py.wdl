version 1.0

task MygeneUtilspy {
  command <<<
    mygene_utils_py
  >>>
  output {
    File out_stdout = stdout()
  }
}