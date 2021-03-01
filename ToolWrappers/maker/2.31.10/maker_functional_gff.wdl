version 1.0

task MakerFunctionalGff {
  command <<<
    maker_functional_gff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}