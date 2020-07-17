version 1.0

task MotifRaptorMotifspecific {
  input {
    String? workdir
    String? snp_motif_file
    String? motif_id
    String? bg_score_folder
  }
  command <<<
    MotifRaptor motifspecific \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(snp_motif_file) then ("--snp_motif_file " +  '"' + snp_motif_file + '"') else ""} \
      ~{if defined(motif_id) then ("--motif_id " +  '"' + motif_id + '"') else ""} \
      ~{if defined(bg_score_folder) then ("--bg_score_folder " +  '"' + bg_score_folder + '"') else ""}
  >>>
  parameter_meta {
    workdir: "Working directory"
    snp_motif_file: "SNP motif pair-wise list File, usually from step2"
    motif_id: "motif id with name, in the format of motifID__NAME"
    bg_score_folder: "background score folder, usually from step2"
  }
}