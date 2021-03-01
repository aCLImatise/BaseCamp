version 1.0

task Soap2sampl {
  command <<<
    soap2sam_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}