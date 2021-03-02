version 1.0

task Gomapandfiltersh {
  command <<<
    gomapandfilter_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}