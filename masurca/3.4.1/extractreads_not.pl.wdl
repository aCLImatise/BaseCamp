version 1.0

task ExtractreadsNotpl {
  command <<<
    extractreads_not_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}