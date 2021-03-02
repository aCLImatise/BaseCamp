version 1.0

task Fastanrdb {
  command <<<
    fastanrdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}