class: CommandLineTool
id: ../../../dnase_cut_counter.py.cwl
inputs:
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
- dnase_cut_counter.py
