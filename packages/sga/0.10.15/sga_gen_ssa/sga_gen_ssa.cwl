class: CommandLineTool
id: sga_gen_ssa.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: 'use NUM threads to construct the index (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_check
  doc: validate that the suffix array/bwt is correct
  type: boolean
  inputBinding:
    prefix: --check
- id: in_sai_only
  doc: only build the lexicographic index
  type: boolean
  inputBinding:
    prefix: --sai-only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sga
- gen-ssa
