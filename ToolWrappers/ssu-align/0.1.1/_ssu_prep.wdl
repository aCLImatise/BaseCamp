version 1.0

task Ssuprep {
  command <<<
    _ssu_prep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}