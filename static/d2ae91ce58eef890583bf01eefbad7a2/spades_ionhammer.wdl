version 1.0

task Spadesionhammer {
  command <<<
    spades_ionhammer
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.2--h633aebb_0"
  }
  output {
    File out_stdout = stdout()
  }
}