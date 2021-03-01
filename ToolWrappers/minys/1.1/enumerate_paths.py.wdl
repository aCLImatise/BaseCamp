version 1.0

task EnumeratePathspy {
  command <<<
    enumerate_paths_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}