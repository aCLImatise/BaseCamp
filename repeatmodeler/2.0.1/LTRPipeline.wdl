version 1.0

task LTRPipeline {
  input {
    Boolean? version
    String? rmb_last_dir
    String? ninja_dir
    String? repeatmasker_dir
    String? abb_last_dir
    String? recon_dir
    String? cd_hit_dir
    String? maff_t_dir
    String? genome_tools_dir
    String? trf_prgm
    String? ltr_retriever_dir
    String? r_scout_dir
  }
  command <<<
    LTRPipeline \
      ~{true="-version" false="" version} \
      ~{if defined(rmb_last_dir) then ("-rmblast_dir " +  '"' + rmb_last_dir + '"') else ""} \
      ~{if defined(ninja_dir) then ("-ninja_dir " +  '"' + ninja_dir + '"') else ""} \
      ~{if defined(repeatmasker_dir) then ("-repeatmasker_dir " +  '"' + repeatmasker_dir + '"') else ""} \
      ~{if defined(abb_last_dir) then ("-abblast_dir " +  '"' + abb_last_dir + '"') else ""} \
      ~{if defined(recon_dir) then ("-recon_dir " +  '"' + recon_dir + '"') else ""} \
      ~{if defined(cd_hit_dir) then ("-cdhit_dir " +  '"' + cd_hit_dir + '"') else ""} \
      ~{if defined(maff_t_dir) then ("-mafft_dir " +  '"' + maff_t_dir + '"') else ""} \
      ~{if defined(genome_tools_dir) then ("-genometools_dir " +  '"' + genome_tools_dir + '"') else ""} \
      ~{if defined(trf_prgm) then ("-trf_prgm " +  '"' + trf_prgm + '"') else ""} \
      ~{if defined(ltr_retriever_dir) then ("-ltr_retriever_dir " +  '"' + ltr_retriever_dir + '"') else ""} \
      ~{if defined(r_scout_dir) then ("-rscout_dir " +  '"' + r_scout_dir + '"') else ""}
  >>>
  parameter_meta {
    version: "Displays the version of the program"
    rmb_last_dir: "The path to the installation of the RMBLAST sequence alignment program."
    ninja_dir: "The path to the installation of the Ninja phylogenetic analysis package."
    repeatmasker_dir: "The path to the installation of RepeatMasker."
    abb_last_dir: "The path to the installation of the ABBLAST sequence alignment program."
    recon_dir: "The path to the installation of the RECON de-novo repeatfinding program."
    cd_hit_dir: "The path to the installation of the CD-Hit sequence clustering package."
    maff_t_dir: "The path to the installation of the MAFFT multiple alignment program."
    genome_tools_dir: "The path to the installation of the GenomeTools package."
    trf_prgm: "The full path including the name for the TRF program ( 4.0.9 or higher )"
    ltr_retriever_dir: "The path to the installation of the LTR_Retriever structural LTR analysis package."
    r_scout_dir: "The path to the installation of the RepeatScout ( 1.0.6 or higher ) de-novo repeatfinding program."
  }
}