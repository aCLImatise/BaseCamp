version 1.0

task StrainestSnpclust {
  input {
    String snp
    String dist
    String snp_out
    String clust
  }
  command <<<
    strainest snpclust \
      ~{snp} \
      ~{dist} \
      ~{snp_out} \
      ~{clust}
  >>>
  parameter_meta {
    snp: ""
    dist: ""
    snp_out: ""
    clust: ""
  }
  output {
    File out_stdout = stdout()
  }
}