version 1.0

task MotifRaptorSnpmotif {
  input {
    Directory? workdir
    String? cell_type
    File? snp_hit_bed
    Int? snp_hit_seq
    File? bg_snp
    File? motifs
    Int? threads
  }
  command <<<
    MotifRaptor snpmotif \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if defined(cell_type) then ("--cell_type " +  '"' + cell_type + '"') else ""} \
      ~{if defined(snp_hit_bed) then ("--snp_hit_bed " +  '"' + snp_hit_bed + '"') else ""} \
      ~{if defined(snp_hit_seq) then ("--snp_hit_seq " +  '"' + snp_hit_seq + '"') else ""} \
      ~{if defined(bg_snp) then ("--bg_snp " +  '"' + bg_snp + '"') else ""} \
      ~{if defined(motifs) then ("--motifs " +  '"' + motifs + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    workdir: "Working directory"
    cell_type: "Cell type or Tissue type ID"
    snp_hit_bed: "hit snps on union bed file, usually from step1"
    snp_hit_seq: "hit snps with sequence information, usually from step1"
    bg_snp: "background snp list file or (genome)"
    motifs: "motif list file, no header, or (all)"
    threads: "number of threads\\n"
  }
  output {
    File out_stdout = stdout()
  }
}