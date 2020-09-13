version 1.0

task NextflowbakCloud {
  command <<<
    nextflow_bak cloud
  >>>
  output {
    File out_stdout = stdout()
  }
}