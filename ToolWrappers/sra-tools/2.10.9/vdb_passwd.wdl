version 1.0

task Vdbpasswd {
  command <<<
    vdb_passwd
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  output {
    File out_stdout = stdout()
  }
}