class: CommandLineTool
id: CalcGeneCov.py.cwl
inputs:
- id: in_gene_freq_file
  doc: input gene base frequencies
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CalcGeneCov.py
