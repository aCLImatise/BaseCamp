version 1.0

task RewriteCache {
  command <<<
    rewriteCache
  >>>
  output {
    File out_stdout = stdout()
  }
}