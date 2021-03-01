version 1.0

task COGpl {
  command <<<
    COG_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}