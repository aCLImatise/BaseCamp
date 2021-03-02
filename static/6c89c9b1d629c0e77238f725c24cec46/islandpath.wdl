version 1.0

task Islandpath {
  command <<<
    islandpath
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}