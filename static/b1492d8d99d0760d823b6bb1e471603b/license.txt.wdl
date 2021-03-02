version 1.0

task Licensetxt {
  command <<<
    license_txt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}