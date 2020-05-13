class: CommandLineTool
id: filter_samples_from_otu_table.py.cwl
inputs:
- id: input_fp
  doc: the input otu table filepath in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: output_fp
  doc: the output filepath in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_samples_from_otu_table.py
