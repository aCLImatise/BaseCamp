version 1.0

task RewriteCache {
  command <<<
    rewriteCache
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}