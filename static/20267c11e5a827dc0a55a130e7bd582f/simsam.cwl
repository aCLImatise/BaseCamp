class: CommandLineTool
id: simsam.py.cwl
inputs:
- id: otu_table
  doc: the input otu table [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table
- id: tree_file
  doc: tree file [REQUIRED]
  type: string
  inputBinding:
    prefix: --tree_file
- id: output_dir
  doc: path to the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: dis_sim
  doc: dissimilarity between nodes up the tree, as a single value or comma-separated
    list of values [REQUIRED]
  type: string
  inputBinding:
    prefix: --dissim
- id: num
  doc: number of simulated samples per input sample, as a single value or comma-separated
    list of values [REQUIRED]
  type: string
  inputBinding:
    prefix: --num
outputs: []
cwlVersion: v1.1
baseCommand:
- simsam.py
