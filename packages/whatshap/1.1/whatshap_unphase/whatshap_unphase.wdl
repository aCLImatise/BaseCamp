version 1.0

task WhatshapUnphase {
  input {
    String vcf
  }
  command <<<
    whatshap unphase \
      ~{vcf}
  >>>
  runtime {
    docker: "quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0"
  }
  parameter_meta {
    vcf: "VCF file. Use \\\"-\\\" to read from standard input"
  }
  output {
    File out_stdout = stdout()
  }
}