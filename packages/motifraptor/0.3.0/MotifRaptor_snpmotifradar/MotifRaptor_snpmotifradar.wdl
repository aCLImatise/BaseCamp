version 1.0

task MotifRaptorSnpmotifradar {
  input {
    Directory? workdir
    File? snp_motif_file
    File? snp_feature_file
    String? snp_motif_id
  }
  command <<<
    MotifRaptor snpmotifradar \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(snp_motif_file) then ("--snp_motif_file " +  '"' + snp_motif_file + '"') else ""} \
      ~{if defined(snp_feature_file) then ("--snp_feature_file " +  '"' + snp_feature_file + '"') else ""} \
      ~{if defined(snp_motif_id) then ("--snp_motif_id " +  '"' + snp_motif_id + '"') else ""}
  >>>
  parameter_meta {
    workdir: "Working directory"
    snp_motif_file: "SNP motif pair-wise list File, usually from step2"
    snp_feature_file: "SNP feature file, usually from step2"
    snp_motif_id: "SNP motif pair-wise ID\\n"
  }
  output {
    File out_stdout = stdout()
  }
}