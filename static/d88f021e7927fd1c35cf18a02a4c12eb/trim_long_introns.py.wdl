version 1.0

task TrimLongIntronspy {
  command <<<
    trim_long_introns_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}