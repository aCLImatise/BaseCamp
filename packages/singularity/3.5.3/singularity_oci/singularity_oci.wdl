version 1.0

task SingularityOci {
  command <<<
    singularity oci
  >>>
  output {
    File out_stdout = stdout()
  }
}