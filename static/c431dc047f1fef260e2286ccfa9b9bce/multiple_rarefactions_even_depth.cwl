class: CommandLineTool
id: multiple_rarefactions_even_depth.py.cwl
inputs:
- id: input_path
  doc: input otu table filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: write output rarefied otu tables files to this dir (makes dir if it doesn't
    exist) [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
- id: depth
  doc: sequences per sample to subsample [REQUIRED]
  type: string
  inputBinding:
    prefix: --depth
outputs: []
cwlVersion: v1.1
baseCommand:
- multiple_rarefactions_even_depth.py
