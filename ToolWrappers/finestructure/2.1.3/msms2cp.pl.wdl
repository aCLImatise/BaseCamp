version 1.0

task Msms2cppl {
  command <<<
    msms2cp_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}