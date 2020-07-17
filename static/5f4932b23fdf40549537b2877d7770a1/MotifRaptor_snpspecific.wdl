version 1.0

task MotifRaptorSnpspecific {
  input {
    String? workdir
    String? snp_motif_file
    String? snp_id
  }
  command <<<
    MotifRaptor snpspecific \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(snp_motif_file) then ("--snp_motif_file " +  '"' + snp_motif_file + '"') else ""} \
      ~{if defined(snp_id) then ("--snp_id " +  '"' + snp_id + '"') else ""}
  >>>
  parameter_meta {
    workdir: "Working directory"
    snp_motif_file: "SNP motif pair-wise list File, usually from step2"
    snp_id: "SNP id"
  }
}