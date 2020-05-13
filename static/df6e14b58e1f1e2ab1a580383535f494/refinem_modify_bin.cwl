class: CommandLineTool
id: refinem_modify_bin.cwl
inputs:
- id: scaffold_file
  doc: scaffolds binned to generate putative genomes
  type: string
  inputBinding:
    position: 0
- id: genome_file
  doc: genome to be modified
  type: string
  inputBinding:
    position: 1
- id: output_genome
  doc: modified genome
  type: string
  inputBinding:
    position: 2
- id: min_len
  doc: minimum length of scaffold to allow it to be added to a genome
  type: long
  inputBinding:
    prefix: --min_len
- id: add
  doc: ID of scaffold to add to genome (may specify multiple times)
  type: string
  inputBinding:
    prefix: --add
- id: remove
  doc: ID of scaffold to remove from bin (may specify multiple times)
  type: string
  inputBinding:
    prefix: --remove
- id: outlier_file
  doc: remove all scaffolds identified as outliers (see outlier command)
  type: string
  inputBinding:
    prefix: --outlier_file
- id: silent
  doc: suppress output of logger
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- refinem
- modify_bin
