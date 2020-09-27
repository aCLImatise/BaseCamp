class: CommandLineTool
id: umis_kallisto.cwl
inputs:
- id: in_out_dir
  doc: "--cb_histogram TEXT\n--cb_cutoff INTEGER\n--help               Show this message\
    \ and exit.\n"
  type: long
  inputBinding:
    prefix: --out_dir
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- umis
- kallisto
