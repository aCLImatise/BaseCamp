version 1.0

task COGpl {
  command <<<
    COG_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}