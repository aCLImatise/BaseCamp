class: CommandLineTool
id: RepeatModeler.cwl
inputs:
- id: in_database
  doc: "The name of the sequence database to run an analysis on. This is the\nname\
    \ that was provided to the BuildDatabase script using the \"-name\"\noption."
  type: boolean?
  inputBinding:
    prefix: -database
- id: in_pa
  doc: "#\nSpecify the number of parallel search jobs to run. RMBlast jobs will\n\
    use 4 cores each and ABBlast jobs will use a single core each. i.e.\non a machine\
    \ with 12 cores and running with RMBlast you would use\n-pa 3 to fully utilize\
    \ the machine."
  type: boolean?
  inputBinding:
    prefix: -pa
- id: in_recover_dir
  doc: "If a run fails in the middle of processing, it may be possible\nrecover some\
    \ results and continue where the previous run left off.\nSimply supply the output\
    \ directory where the results of the failed\nrun were saved and the program will\
    \ attempt to recover and continue\nthe run."
  type: Directory?
  inputBinding:
    prefix: -recoverDir
- id: in_sr_and
  doc: "#\nOptionally set the seed of the random number generator to a known\nvalue\
    \ before the batches are randomly selected ( using Fisher Yates\nShuffling ).\
    \ This is only useful if you need to reproduce the sample\nchoice between runs.\
    \ This should be an integer number."
  type: boolean?
  inputBinding:
    prefix: -srand
- id: in_ltr_struct
  doc: "Run the LTR structural discovery pipeline ( LTR_Harvest and\nLTR_retreiver\
    \ ) and combine results with the RepeatScout/RECON\npipeline. [optional]"
  type: boolean?
  inputBinding:
    prefix: -LTRStruct
- id: in_genome_sample_size_max
  doc: "#\nOptionally change the maximum bp of the genome to sample in all\nrounds\
    \ of RECON (default=243000000)."
  type: boolean?
  inputBinding:
    prefix: -genomeSampleSizeMax
- id: in_r_scout_dir
  doc: "The path to the installation of the RepeatScout ( 1.0.6 or higher )\nde-novo\
    \ repeatfinding program."
  type: File?
  inputBinding:
    prefix: -rscout_dir
- id: in_cd_hit_dir
  doc: "The path to the installation of the CD-Hit sequence clustering\npackage."
  type: File?
  inputBinding:
    prefix: -cdhit_dir
- id: in_maff_t_dir
  doc: "The path to the installation of the MAFFT multiple alignment\nprogram."
  type: File?
  inputBinding:
    prefix: -mafft_dir
- id: in_rmb_last_dir
  doc: "The path to the installation of the RMBLAST sequence alignment\nprogram."
  type: File?
  inputBinding:
    prefix: -rmblast_dir
- id: in_trf_prgm
  doc: "The full path including the name for the TRF program ( 4.0.9 or\nhigher )"
  type: File?
  inputBinding:
    prefix: -trf_prgm
- id: in_repeatmasker_dir
  doc: The path to the installation of RepeatMasker.
  type: File?
  inputBinding:
    prefix: -repeatmasker_dir
- id: in_ltr_retriever_dir
  doc: "The path to the installation of the LTR_Retriever structural LTR\nanalysis\
    \ package."
  type: File?
  inputBinding:
    prefix: -ltr_retriever_dir
- id: in_abb_last_dir
  doc: "The path to the installation of the ABBLAST sequence alignment\nprogram."
  type: File?
  inputBinding:
    prefix: -abblast_dir
- id: in_genome_tools_dir
  doc: The path to the installation of the GenomeTools package.
  type: File?
  inputBinding:
    prefix: -genometools_dir
- id: in_ninja_dir
  doc: "The path to the installation of the Ninja phylogenetic analysis\npackage."
  type: File?
  inputBinding:
    prefix: -ninja_dir
- id: in_recon_dir
  doc: "The path to the installation of the RECON de-novo repeatfinding\nprogram."
  type: File?
  inputBinding:
    prefix: -recon_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_recover_dir
  doc: "If a run fails in the middle of processing, it may be possible\nrecover some\
    \ results and continue where the previous run left off.\nSimply supply the output\
    \ directory where the results of the failed\nrun were saved and the program will\
    \ attempt to recover and continue\nthe run."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_recover_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- RepeatModeler
