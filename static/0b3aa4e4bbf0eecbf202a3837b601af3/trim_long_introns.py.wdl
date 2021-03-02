version 1.0

task TrimLongIntronspy {
  command <<<
    trim_long_introns_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0"
  }
  output {
    File out_stdout = stdout()
  }
}