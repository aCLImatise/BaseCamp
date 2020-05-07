class: CommandLineTool
id: compute_core_microbiome.py.cwl
inputs:
- id: mapping_fp
  doc: ') [default: none]'
  type: boolean
  inputBinding:
    prefix: --mapping_fp
- id: input_fp
  doc: the input otu table in BIOM format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: output_dir
  doc: directory to store output data [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- compute_core_microbiome.py
