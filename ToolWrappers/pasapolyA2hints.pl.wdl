version 1.0

task PasapolyA2hintspl {
  command <<<
    pasapolyA2hints_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}