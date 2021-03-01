version 1.0

task RandomLinespy {
  command <<<
    random_lines_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}