version 1.0

task NewpreMlocarnapl {
  command <<<
    newpreMlocarna_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}