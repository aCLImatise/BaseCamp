version 1.0

task MozillaCAtargz {
  command <<<
    Mozilla_CA_tar_gz
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  output {
    File out_stdout = stdout()
  }
}