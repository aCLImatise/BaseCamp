version 1.0

task CollateFromFilesh {
  command <<<
    collate_from_file_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}