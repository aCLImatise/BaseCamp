version 1.0

task MetaPopMineReadsR {
  command <<<
    MetaPop_Mine_Reads_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/metapop:1.0.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}