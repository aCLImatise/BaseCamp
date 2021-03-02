version 1.0

task Ptmlisttxt {
  command <<<
    ptmlist_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}