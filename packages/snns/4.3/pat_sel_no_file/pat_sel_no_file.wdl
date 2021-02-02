version 1.0

task PatSelNoFile {
  command <<<
    pat_sel no_file
  >>>
  output {
    File out_stdout = stdout()
  }
}