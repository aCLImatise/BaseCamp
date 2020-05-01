#!/usr/bin/env cwl-runner

baseCommand:
- panphlan_pangenome_generation.py
class: CommandLineTool
cwlVersion: v1.0
id: panphlan_pangenome_generation.py
inputs:
- doc: Folder containing the .ffn gene sequence files
  id: i_ffn
  inputBinding:
    prefix: --i_ffn
  type: string
- doc: Folder containing the .fna genome sequence files
  id: i_fna
  inputBinding:
    prefix: --i_fna
  type: string
- doc: Folder containing the .gff gene annotation files
  id: i_gff
  inputBinding:
    prefix: --i_gff
  type: string
- doc: 'Name of the species pangenome database, for example: -c ecoli17'
  id: clade
  inputBinding:
    prefix: --clade
  type: string
- doc: Result folder for all database files
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'Use pre-processed Roary pangenome clustering (instead of usearch): Folder
    containing gene family cluster results of Roary based on gff'
  id: roar_y_dir
  inputBinding:
    prefix: --roary_dir
  type: string
- doc: 'Threshold of gene sequence similarity (in percentage), default: 95.0 %.'
  id: th
  inputBinding:
    prefix: --th
  type: string
- doc: 'Folder for temporary files, default: TMP_panphlan_db'
  id: tmp
  inputBinding:
    prefix: --tmp
  type: string
- doc: Keep all usearch7 output files
  id: uc
  inputBinding:
    prefix: --uc
  type: boolean
- doc: Show progress information
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
