class: CommandLineTool
id: Refiner.cwl
inputs:
- id: in_trf_prgm
  doc: "The full path including the name for the TRF program ( 4.0.9 or\nhigher )"
  type: File?
  inputBinding:
    prefix: -trf_prgm
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
- id: in_r_scout_dir
  doc: "The path to the installation of the RepeatScout ( 1.0.6 or higher )\nde-novo\
    \ repeatfinding program."
  type: File?
  inputBinding:
    prefix: -rscout_dir
- id: in_rmb_last_dir
  doc: "The path to the installation of the RMBLAST sequence alignment\nprogram."
  type: File?
  inputBinding:
    prefix: -rmblast_dir
- id: in_repeatmasker_dir
  doc: The path to the installation of RepeatMasker.
  type: File?
  inputBinding:
    prefix: -repeatmasker_dir
- id: in_ninja_dir
  doc: "The path to the installation of the Ninja phylogenetic analysis\npackage."
  type: File?
  inputBinding:
    prefix: -ninja_dir
- id: in_abb_last_dir
  doc: "The path to the installation of the ABBLAST sequence alignment\nprogram."
  type: File?
  inputBinding:
    prefix: -abblast_dir
- id: in_ltr_retriever_dir
  doc: "The path to the installation of the LTR_Retriever structural LTR\nanalysis\
    \ package."
  type: File?
  inputBinding:
    prefix: -ltr_retriever_dir
- id: in_recon_dir
  doc: "The path to the installation of the RECON de-novo repeatfinding\nprogram."
  type: File?
  inputBinding:
    prefix: -recon_dir
- id: in_genome_tools_dir
  doc: The path to the installation of the GenomeTools package.
  type: File?
  inputBinding:
    prefix: -genometools_dir
- id: in_instances
  doc: "SYNOPSIS\nRefiner [-options] <family fasta sequences>"
  type: string
  inputBinding:
    position: 0
- id: in_bar
  doc: CONFIGURATION OVERRIDES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Refiner
