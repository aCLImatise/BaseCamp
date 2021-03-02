version 1.0

task Checkmgenomepreunlinksh {
  command <<<
    _checkm_genome_pre_unlink_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkm-genome:1.1.3--py_1"
  }
  output {
    File out_stdout = stdout()
  }
}