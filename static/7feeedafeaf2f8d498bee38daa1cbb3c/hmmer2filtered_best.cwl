class: CommandLineTool
id: hmmer2filtered_best.py.cwl
inputs:
- id: out_excl_f
  doc: domain hits filtered due to the applied thresholds
  type: string
  inputBinding:
    prefix: --out_excl_f
- id: out_filt_f
  doc: hmmer tab delimited file with hits removed according to the thresholds
  type: string
  inputBinding:
    prefix: --out_filt_f
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmer2filtered_best.py
