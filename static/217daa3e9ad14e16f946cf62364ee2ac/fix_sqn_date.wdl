version 1.0

task Fixsqndate {
  command <<<
    fix_sqn_date
  >>>
  runtime {
    docker: "quay.io/biocontainers/tbl2asn-forever:25.7.2f--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}