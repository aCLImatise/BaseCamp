version 1.0

task HmmpairStofile {
  command <<<
    hmmpair sto_file
  >>>
  output {
    File out_stdout = stdout()
  }
}