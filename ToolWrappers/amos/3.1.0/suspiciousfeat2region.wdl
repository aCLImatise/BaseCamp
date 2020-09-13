version 1.0

task Suspiciousfeat2region {
  command <<<
    suspiciousfeat2region
  >>>
  output {
    File out_stdout = stdout()
  }
}