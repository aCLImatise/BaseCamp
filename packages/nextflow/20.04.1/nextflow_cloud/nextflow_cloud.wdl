version 1.0

task NextflowCloud {
  command <<<
    nextflow cloud
  >>>
  output {
    File out_stdout = stdout()
  }
}