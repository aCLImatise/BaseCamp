version 1.0

task SingularityPlugin {
  command <<<
    singularity plugin
  >>>
  output {
    File out_stdout = stdout()
  }
}