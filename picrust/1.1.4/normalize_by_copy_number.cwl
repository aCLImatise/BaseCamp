class: CommandLineTool
id: normalize_by_copy_number.py.cwl
inputs:
- id: input_otu_fp
  doc: the input otu table filepath in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_otu_fp
- id: output_otu_fp
  doc: the output otu table filepath in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_otu_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- normalize_by_copy_number.py
