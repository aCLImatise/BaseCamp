#!/usr/bin/env cwl-runner

baseCommand:
- Refiner
class: CommandLineTool
cwlVersion: v1.0
id: refiner
inputs:
- doc: bar
  id: foo
  inputBinding:
    prefix: -foo
  type: boolean
- doc: The path to the installation of the RMBLAST sequence alignment program.
  id: rmb_last_dir
  inputBinding:
    prefix: -rmblast_dir
  type: string
- doc: The path to the installation of the LTR_Retriever structural LTR analysis package.
  id: ltr_retriever_dir
  inputBinding:
    prefix: -ltr_retriever_dir
  type: string
- doc: The path to the installation of the ABBLAST sequence alignment program.
  id: abb_last_dir
  inputBinding:
    prefix: -abblast_dir
  type: string
- doc: The path to the installation of the Ninja phylogenetic analysis package.
  id: ninja_dir
  inputBinding:
    prefix: -ninja_dir
  type: string
- doc: The full path including the name for the TRF program ( 4.0.9 or higher )
  id: trf_prgm
  inputBinding:
    prefix: -trf_prgm
  type: string
- doc: The path to the installation of the RepeatScout ( 1.0.6 or higher ) de-novo
    repeatfinding program.
  id: r_scout_dir
  inputBinding:
    prefix: -rscout_dir
  type: string
- doc: The path to the installation of RepeatMasker.
  id: repeatmasker_dir
  inputBinding:
    prefix: -repeatmasker_dir
  type: string
- doc: The path to the installation of the CD-Hit sequence clustering package.
  id: cd_hit_dir
  inputBinding:
    prefix: -cdhit_dir
  type: string
- doc: The path to the installation of the MAFFT multiple alignment program.
  id: maff_t_dir
  inputBinding:
    prefix: -mafft_dir
  type: string
- doc: The path to the installation of the GenomeTools package.
  id: genome_tools_dir
  inputBinding:
    prefix: -genometools_dir
  type: string
- doc: The path to the installation of the RECON de-novo repeatfinding program.
  id: recon_dir
  inputBinding:
    prefix: -recon_dir
  type: string
