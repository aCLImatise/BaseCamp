version 1.0

task Maf2conswigpl {
  command <<<
    maf2conswig_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}