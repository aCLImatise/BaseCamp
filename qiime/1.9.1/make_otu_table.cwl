class: CommandLineTool
id: make_otu_table.py.cwl
inputs:
- id: otu_map_fp
  doc: path to the input OTU map (i.e., the output from pick_otus.py) [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_map_fp
- id: output_biom_fp
  doc: 'the output otu table in biom format (recommended extension: .biom) [REQUIRED]'
  type: string
  inputBinding:
    prefix: --output_biom_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- make_otu_table.py
