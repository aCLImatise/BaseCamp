version 1.0

task RepeatClassifier {
  input {
    String? repeatmasker_dir
    String? genome_tools_dir
    String? cd_hit_dir
    String? ninja_dir
    String? trf_prgm
    String? r_scout_dir
    String? recon_dir
    String? maff_t_dir
    String? ltr_retriever_dir
    String? abb_last_dir
    String? rmb_last_dir
  }
  command <<<
    RepeatClassifier \
      ~{if defined(repeatmasker_dir) then ("-repeatmasker_dir " +  '"' + repeatmasker_dir + '"') else ""} \
      ~{if defined(genome_tools_dir) then ("-genometools_dir " +  '"' + genome_tools_dir + '"') else ""} \
      ~{if defined(cd_hit_dir) then ("-cdhit_dir " +  '"' + cd_hit_dir + '"') else ""} \
      ~{if defined(ninja_dir) then ("-ninja_dir " +  '"' + ninja_dir + '"') else ""} \
      ~{if defined(trf_prgm) then ("-trf_prgm " +  '"' + trf_prgm + '"') else ""} \
      ~{if defined(r_scout_dir) then ("-rscout_dir " +  '"' + r_scout_dir + '"') else ""} \
      ~{if defined(recon_dir) then ("-recon_dir " +  '"' + recon_dir + '"') else ""} \
      ~{if defined(maff_t_dir) then ("-mafft_dir " +  '"' + maff_t_dir + '"') else ""} \
      ~{if defined(ltr_retriever_dir) then ("-ltr_retriever_dir " +  '"' + ltr_retriever_dir + '"') else ""} \
      ~{if defined(abb_last_dir) then ("-abblast_dir " +  '"' + abb_last_dir + '"') else ""} \
      ~{if defined(rmb_last_dir) then ("-rmblast_dir " +  '"' + rmb_last_dir + '"') else ""}
  >>>
  parameter_meta {
    repeatmasker_dir: "The path to the installation of RepeatMasker."
    genome_tools_dir: "The path to the installation of the GenomeTools package."
    cd_hit_dir: "The path to the installation of the CD-Hit sequence clustering package."
    ninja_dir: "The path to the installation of the Ninja phylogenetic analysis package."
    trf_prgm: "The full path including the name for the TRF program ( 4.0.9 or higher )"
    r_scout_dir: "The path to the installation of the RepeatScout ( 1.0.6 or higher ) de-novo repeatfinding program."
    recon_dir: "The path to the installation of the RECON de-novo repeatfinding program."
    maff_t_dir: "The path to the installation of the MAFFT multiple alignment program."
    ltr_retriever_dir: "The path to the installation of the LTR_Retriever structural LTR analysis package."
    abb_last_dir: "The path to the installation of the ABBLAST sequence alignment program."
    rmb_last_dir: "The path to the installation of the RMBLAST sequence alignment program."
  }
}