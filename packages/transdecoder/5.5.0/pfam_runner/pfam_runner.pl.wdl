version 1.0

task PfamRunnerpl {
  command <<<
    pfam_runner_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}