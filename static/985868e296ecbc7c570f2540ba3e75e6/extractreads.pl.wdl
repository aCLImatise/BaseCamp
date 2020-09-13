version 1.0

task Extractreadspl {
  command <<<
    extractreads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}