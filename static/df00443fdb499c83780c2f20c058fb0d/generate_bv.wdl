version 1.0

task GenerateBv {
  command <<<
    generate_bv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}