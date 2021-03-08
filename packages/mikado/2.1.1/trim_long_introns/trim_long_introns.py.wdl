version 1.0

task TrimLongIntronspy {
  command <<<
    trim_long_introns_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.1.1--py36hf0b53f7_0"
  }
  output {
    File out_stdout = stdout()
  }
}