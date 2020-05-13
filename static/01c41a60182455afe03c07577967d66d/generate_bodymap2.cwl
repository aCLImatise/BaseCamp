class: CommandLineTool
id: generate_bodymap2.py.cwl
inputs:
- id: organism
  doc: The name of the organism for which the list of allowed candidate fusion genes
    is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  type: string
  inputBinding:
    prefix: --organism
- id: output
  doc: The output directory where the list of allowed candidate fusion genes is generated.
    Default is '.'.
  type: string
  inputBinding:
    prefix: --output
- id: skip_filter_overlap
  doc: If set then it filters out the known fusion genes where the (i) genes are fully
    overlapping, or (ii) the genes are partially overlapping and are on the same strand.
    Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --skip-filter-overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_bodymap2.py
