version 1.0

task HaploToPlink {
  command <<<
    haploToPlink
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}