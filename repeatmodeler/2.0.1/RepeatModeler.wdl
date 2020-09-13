version 1.0

task RepeatModeler {
  input {
    Boolean? database
    Boolean? pa
    Directory? recover_dir
    Boolean? sr_and
    Boolean? ltr_struct
    Boolean? genome_sample_size_max
    File? r_scout_dir
    File? cd_hit_dir
    File? maff_t_dir
    File? rmb_last_dir
    File? trf_prgm
    File? repeatmasker_dir
    File? ltr_retriever_dir
    File? abb_last_dir
    File? genome_tools_dir
    File? ninja_dir
    File? recon_dir
  }
  command <<<
    RepeatModeler \
      ~{if (database) then "-database" else ""} \
      ~{if (pa) then "-pa" else ""} \
      ~{if defined(recover_dir) then ("-recoverDir " +  '"' + recover_dir + '"') else ""} \
      ~{if (sr_and) then "-srand" else ""} \
      ~{if (ltr_struct) then "-LTRStruct" else ""} \
      ~{if (genome_sample_size_max) then "-genomeSampleSizeMax" else ""} \
      ~{if defined(r_scout_dir) then ("-rscout_dir " +  '"' + r_scout_dir + '"') else ""} \
      ~{if defined(cd_hit_dir) then ("-cdhit_dir " +  '"' + cd_hit_dir + '"') else ""} \
      ~{if defined(maff_t_dir) then ("-mafft_dir " +  '"' + maff_t_dir + '"') else ""} \
      ~{if defined(rmb_last_dir) then ("-rmblast_dir " +  '"' + rmb_last_dir + '"') else ""} \
      ~{if defined(trf_prgm) then ("-trf_prgm " +  '"' + trf_prgm + '"') else ""} \
      ~{if defined(repeatmasker_dir) then ("-repeatmasker_dir " +  '"' + repeatmasker_dir + '"') else ""} \
      ~{if defined(ltr_retriever_dir) then ("-ltr_retriever_dir " +  '"' + ltr_retriever_dir + '"') else ""} \
      ~{if defined(abb_last_dir) then ("-abblast_dir " +  '"' + abb_last_dir + '"') else ""} \
      ~{if defined(genome_tools_dir) then ("-genometools_dir " +  '"' + genome_tools_dir + '"') else ""} \
      ~{if defined(ninja_dir) then ("-ninja_dir " +  '"' + ninja_dir + '"') else ""} \
      ~{if defined(recon_dir) then ("-recon_dir " +  '"' + recon_dir + '"') else ""}
  >>>
  parameter_meta {
    database: "The name of the sequence database to run an analysis on. This is the\\nname that was provided to the BuildDatabase script using the \\\"-name\\\"\\noption."
    pa: "#\\nSpecify the number of parallel search jobs to run. RMBlast jobs will\\nuse 4 cores each and ABBlast jobs will use a single core each. i.e.\\non a machine with 12 cores and running with RMBlast you would use\\n-pa 3 to fully utilize the machine."
    recover_dir: "If a run fails in the middle of processing, it may be possible\\nrecover some results and continue where the previous run left off.\\nSimply supply the output directory where the results of the failed\\nrun were saved and the program will attempt to recover and continue\\nthe run."
    sr_and: "#\\nOptionally set the seed of the random number generator to a known\\nvalue before the batches are randomly selected ( using Fisher Yates\\nShuffling ). This is only useful if you need to reproduce the sample\\nchoice between runs. This should be an integer number."
    ltr_struct: "Run the LTR structural discovery pipeline ( LTR_Harvest and\\nLTR_retreiver ) and combine results with the RepeatScout/RECON\\npipeline. [optional]"
    genome_sample_size_max: "#\\nOptionally change the maximum bp of the genome to sample in all\\nrounds of RECON (default=243000000)."
    r_scout_dir: "The path to the installation of the RepeatScout ( 1.0.6 or higher )\\nde-novo repeatfinding program."
    cd_hit_dir: "The path to the installation of the CD-Hit sequence clustering\\npackage."
    maff_t_dir: "The path to the installation of the MAFFT multiple alignment\\nprogram."
    rmb_last_dir: "The path to the installation of the RMBLAST sequence alignment\\nprogram."
    trf_prgm: "The full path including the name for the TRF program ( 4.0.9 or\\nhigher )"
    repeatmasker_dir: "The path to the installation of RepeatMasker."
    ltr_retriever_dir: "The path to the installation of the LTR_Retriever structural LTR\\nanalysis package."
    abb_last_dir: "The path to the installation of the ABBLAST sequence alignment\\nprogram."
    genome_tools_dir: "The path to the installation of the GenomeTools package."
    ninja_dir: "The path to the installation of the Ninja phylogenetic analysis\\npackage."
    recon_dir: "The path to the installation of the RECON de-novo repeatfinding\\nprogram."
  }
  output {
    File out_stdout = stdout()
    Directory out_recover_dir = "${in_recover_dir}"
  }
}