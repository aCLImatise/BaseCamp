version 1.0

task PashToLffrb {
  command <<<
    pashToLff_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}