version 1.0

task PasapolyA2hintspl {
  command <<<
    pasapolyA2hints_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}