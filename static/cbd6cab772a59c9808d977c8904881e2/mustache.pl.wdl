version 1.0

task Mustachepl {
  command <<<
    mustache_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}