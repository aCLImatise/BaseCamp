version 1.0

task Refiner {
  input {
    File? trf_prgm
    File? cd_hit_dir
    File? maff_t_dir
    File? r_scout_dir
    File? rmb_last_dir
    File? repeatmasker_dir
    File? ninja_dir
    File? abb_last_dir
    File? ltr_retriever_dir
    File? recon_dir
    File? genome_tools_dir
    String instances
    String bar
  }
  command <<<
    Refiner \
      ~{instances} \
      ~{bar} \
      ~{if defined(trf_prgm) then ("-trf_prgm " +  '"' + trf_prgm + '"') else ""} \
      ~{if defined(cd_hit_dir) then ("-cdhit_dir " +  '"' + cd_hit_dir + '"') else ""} \
      ~{if defined(maff_t_dir) then ("-mafft_dir " +  '"' + maff_t_dir + '"') else ""} \
      ~{if defined(r_scout_dir) then ("-rscout_dir " +  '"' + r_scout_dir + '"') else ""} \
      ~{if defined(rmb_last_dir) then ("-rmblast_dir " +  '"' + rmb_last_dir + '"') else ""} \
      ~{if defined(repeatmasker_dir) then ("-repeatmasker_dir " +  '"' + repeatmasker_dir + '"') else ""} \
      ~{if defined(ninja_dir) then ("-ninja_dir " +  '"' + ninja_dir + '"') else ""} \
      ~{if defined(abb_last_dir) then ("-abblast_dir " +  '"' + abb_last_dir + '"') else ""} \
      ~{if defined(ltr_retriever_dir) then ("-ltr_retriever_dir " +  '"' + ltr_retriever_dir + '"') else ""} \
      ~{if defined(recon_dir) then ("-recon_dir " +  '"' + recon_dir + '"') else ""} \
      ~{if defined(genome_tools_dir) then ("-genometools_dir " +  '"' + genome_tools_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trf_prgm: "The full path including the name for the TRF program ( 4.0.9 or\\nhigher )"
    cd_hit_dir: "The path to the installation of the CD-Hit sequence clustering\\npackage."
    maff_t_dir: "The path to the installation of the MAFFT multiple alignment\\nprogram."
    r_scout_dir: "The path to the installation of the RepeatScout ( 1.0.6 or higher )\\nde-novo repeatfinding program."
    rmb_last_dir: "The path to the installation of the RMBLAST sequence alignment\\nprogram."
    repeatmasker_dir: "The path to the installation of RepeatMasker."
    ninja_dir: "The path to the installation of the Ninja phylogenetic analysis\\npackage."
    abb_last_dir: "The path to the installation of the ABBLAST sequence alignment\\nprogram."
    ltr_retriever_dir: "The path to the installation of the LTR_Retriever structural LTR\\nanalysis package."
    recon_dir: "The path to the installation of the RECON de-novo repeatfinding\\nprogram."
    genome_tools_dir: "The path to the installation of the GenomeTools package."
    instances: "SYNOPSIS\\nRefiner [-options] <family fasta sequences>"
    bar: "CONFIGURATION OVERRIDES"
  }
  output {
    File out_stdout = stdout()
  }
}