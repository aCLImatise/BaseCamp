version 1.0

task MozillaCAtargz {
  command <<<
    Mozilla_CA_tar_gz
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}