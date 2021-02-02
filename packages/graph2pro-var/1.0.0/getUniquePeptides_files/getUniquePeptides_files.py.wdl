version 1.0

task GetUniquePeptidesFilespy {
  command <<<
    getUniquePeptides_files_py
  >>>
  output {
    File out_stdout = stdout()
  }
}