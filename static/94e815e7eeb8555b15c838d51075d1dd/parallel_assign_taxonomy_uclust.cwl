class: CommandLineTool
id: parallel_assign_taxonomy_uclust.py.cwl
inputs:
- id: input_fast_a_fp
  doc: full path to fasta file containing query sequences [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fasta_fp
- id: output_dir
  doc: path to store output files [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_assign_taxonomy_uclust.py
