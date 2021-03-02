version 1.0

task BrBiofetchrb {
  command <<<
    br_biofetch_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}