version 1.0

task Bbversionsh {
  command <<<
    bbversion_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}