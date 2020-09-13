class: CommandLineTool
id: ../../../dnase_wig_tracks.py.cwl
inputs:
- id: in_real
  doc: "Report cuts on the negative strand as positive numbers instead\nof negative\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --real
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
- dnase_wig_tracks.py
