version 1.0

task Beagle2chromopainterpl {
  command <<<
    beagle2chromopainter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}