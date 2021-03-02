version 1.0

task Ensemblveppostlinksh {
  command <<<
    _ensembl_vep_post_link_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0"
  }
  output {
    File out_stdout = stdout()
  }
}