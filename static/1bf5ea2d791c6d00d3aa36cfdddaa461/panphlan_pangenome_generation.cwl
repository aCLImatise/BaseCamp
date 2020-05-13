class: CommandLineTool
id: panphlan_pangenome_generation.py.cwl
inputs:
- id: i_ffn
  doc: Folder containing the .ffn gene sequence files
  type: string
  inputBinding:
    prefix: --i_ffn
- id: i_fna
  doc: Folder containing the .fna genome sequence files
  type: string
  inputBinding:
    prefix: --i_fna
- id: i_gff
  doc: Folder containing the .gff gene annotation files
  type: string
  inputBinding:
    prefix: --i_gff
- id: clade
  doc: 'Name of the species pangenome database, for example: -c ecoli17'
  type: string
  inputBinding:
    prefix: --clade
- id: output
  doc: Result folder for all database files
  type: string
  inputBinding:
    prefix: --output
- id: roar_y_dir
  doc: 'Use pre-processed Roary pangenome clustering (instead of usearch): Folder
    containing gene family cluster results of Roary based on gff'
  type: string
  inputBinding:
    prefix: --roary_dir
- id: th
  doc: 'Threshold of gene sequence similarity (in percentage), default: 95.0 %.'
  type: string
  inputBinding:
    prefix: --th
- id: tmp
  doc: 'Folder for temporary files, default: TMP_panphlan_db'
  type: string
  inputBinding:
    prefix: --tmp
- id: uc
  doc: Keep all usearch7 output files
  type: boolean
  inputBinding:
    prefix: --uc
- id: verbose
  doc: Show progress information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- panphlan_pangenome_generation.py
