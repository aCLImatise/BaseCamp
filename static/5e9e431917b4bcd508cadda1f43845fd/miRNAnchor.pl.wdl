version 1.0

task MiRNAnchorpl {
  command <<<
    miRNAnchor_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirnature:1.0--pl5262r35hdfd78af_2"
  }
  output {
    File out_stdout = stdout()
  }
}