class: CommandLineTool
id: make_otu_network.py.cwl
inputs:
- id: input_fp
  doc: name of otu table file in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
- id: map_fname
  doc: name of input map file [REQUIRED]
  type: string
  inputBinding:
    prefix: --map_fname
- id: output_dir
  doc: output directory for all analyses [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- make_otu_network.py
