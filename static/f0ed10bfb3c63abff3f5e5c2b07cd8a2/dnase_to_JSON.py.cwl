class: CommandLineTool
id: ../../../dnase_to_JSON.py.cwl
inputs:
- id: in_window_size
  doc: Resize all regions to a specific length
  type: long
  inputBinding:
    prefix: --window_size
- id: in_ignores_strand_information
  doc: Ignores strand information in BED file
  type: boolean
  inputBinding:
    prefix: -i
- id: in_atacseq_mode_default
  doc: 'ATAC-seq mode (default: False)'
  type: boolean
  inputBinding:
    prefix: -A
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dnase_to_JSON.py
