version 1.0

task HashList {
  command <<<
    hash_list
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}