version 1.0

task Unimod2storablepl {
  command <<<
    unimod2storable_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}