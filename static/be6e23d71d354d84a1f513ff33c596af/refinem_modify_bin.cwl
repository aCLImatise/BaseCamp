class: CommandLineTool
id: refinem_modify_bin.cwl
inputs:
- id: in_min_len
  doc: "minimum length of scaffold to allow it to be added to\na genome"
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_add
  doc: "ID of scaffold to add to genome (may specify multiple\ntimes)"
  type: string?
  inputBinding:
    prefix: --add
- id: in_remove
  doc: "ID of scaffold to remove from bin (may specify\nmultiple times)"
  type: string?
  inputBinding:
    prefix: --remove
- id: in_outlier_file
  doc: "remove all scaffolds identified as outliers (see\noutlier command)"
  type: File?
  inputBinding:
    prefix: --outlier_file
- id: in_silent
  doc: suppress output of logger
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_scaffold_file
  doc: scaffolds binned to generate putative genomes
  type: string
  inputBinding:
    position: 0
- id: in_genome_file
  doc: genome to be modified
  type: string
  inputBinding:
    position: 1
- id: in_output_genome
  doc: modified genome
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- refinem
- modify_bin
