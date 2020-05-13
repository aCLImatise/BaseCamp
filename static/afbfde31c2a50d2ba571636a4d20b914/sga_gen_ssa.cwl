class: CommandLineTool
id: sga_gen_ssa.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: 'use NUM threads to construct the index (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: check
  doc: validate that the suffix array/bwt is correct
  type: boolean
  inputBinding:
    prefix: --check
- id: sai_only
  doc: only build the lexicographic index
  type: boolean
  inputBinding:
    prefix: --sai-only
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- gen-ssa
