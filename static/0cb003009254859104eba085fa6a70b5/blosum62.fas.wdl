version 1.0

task Blosum62fas {
  command <<<
    blosum62_fas
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}