class: CommandLineTool
id: phyluce_align_parallel_sate.cwl
inputs:
- id: sate_conf
  doc: '[--cores CORES]'
  type: string
  inputBinding:
    prefix: --sate-conf
- id: input
  doc: The input directory containing fasta files
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output directory to hold alignments
  type: string
  inputBinding:
    prefix: --output
- id: sate_conf
  doc: The path to the SATé config file
  type: string
  inputBinding:
    prefix: --sate-conf
- id: cores
  doc: The number of compute cores to use
  type: string
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_parallel_sate
