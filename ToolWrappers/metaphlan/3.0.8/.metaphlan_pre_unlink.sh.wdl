version 1.0

task Metaphlanpreunlinksh {
  command <<<
    _metaphlan_pre_unlink_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/metaphlan:3.0.8--pyhb7b1952_0"
  }
  output {
    File out_stdout = stdout()
  }
}