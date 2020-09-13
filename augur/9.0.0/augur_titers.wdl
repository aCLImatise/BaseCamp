version 1.0

task AugurTiters {
  command <<<
    augur titers
  >>>
  output {
    File out_stdout = stdout()
  }
}