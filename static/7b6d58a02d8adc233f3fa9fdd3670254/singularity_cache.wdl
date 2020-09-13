version 1.0

task SingularityCache {
  command <<<
    singularity cache
  >>>
  output {
    File out_stdout = stdout()
  }
}