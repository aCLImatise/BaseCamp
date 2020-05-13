class: CommandLineTool
id: LTRPipeline.cwl
inputs:
- id: version
  doc: Displays the version of the program
  type: boolean
  inputBinding:
    prefix: -version
- id: trf_prgm
  doc: The full path including the name for the TRF program ( 4.0.9 or higher )
  type: string
  inputBinding:
    prefix: -trf_prgm
- id: ltr_retriever_dir
  doc: The path to the installation of the LTR_Retriever structural LTR analysis package.
  type: string
  inputBinding:
    prefix: -ltr_retriever_dir
- id: r_scout_dir
  doc: The path to the installation of the RepeatScout ( 1.0.6 or higher ) de-novo
    repeatfinding program.
  type: string
  inputBinding:
    prefix: -rscout_dir
- id: rmb_last_dir
  doc: The path to the installation of the RMBLAST sequence alignment program.
  type: string
  inputBinding:
    prefix: -rmblast_dir
- id: ninja_dir
  doc: The path to the installation of the Ninja phylogenetic analysis package.
  type: string
  inputBinding:
    prefix: -ninja_dir
- id: genome_tools_dir
  doc: The path to the installation of the GenomeTools package.
  type: string
  inputBinding:
    prefix: -genometools_dir
- id: cd_hit_dir
  doc: The path to the installation of the CD-Hit sequence clustering package.
  type: string
  inputBinding:
    prefix: -cdhit_dir
- id: abb_last_dir
  doc: The path to the installation of the ABBLAST sequence alignment program.
  type: string
  inputBinding:
    prefix: -abblast_dir
- id: repeatmasker_dir
  doc: The path to the installation of RepeatMasker.
  type: string
  inputBinding:
    prefix: -repeatmasker_dir
- id: maff_t_dir
  doc: The path to the installation of the MAFFT multiple alignment program.
  type: string
  inputBinding:
    prefix: -mafft_dir
- id: recon_dir
  doc: The path to the installation of the RECON de-novo repeatfinding program.
  type: string
  inputBinding:
    prefix: -recon_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- LTRPipeline
