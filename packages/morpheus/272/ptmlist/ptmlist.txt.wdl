version 1.0

task Ptmlisttxt {
  command <<<
    ptmlist_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}