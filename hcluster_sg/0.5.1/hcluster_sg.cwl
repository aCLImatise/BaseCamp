class: CommandLineTool
id: ../../../hcluster_sg.cwl
inputs:
- id: minimum_edge_weight
  doc: minimum edge weight [20]
  type: string
  inputBinding:
    prefix: -w
- id: minimum_edge_density
  doc: minimum edge density between a join [0.50]
  type: string
  inputBinding:
    prefix: -s
- id: maximum_size
  doc: maximum size [500]
  type: string
  inputBinding:
    prefix: -m
- id: output_file
  doc: output file [stdout]
  type: string
  inputBinding:
    prefix: -o
- id: only_find_hcluster
  doc: only find single-linkage clusters (bypass h-cluster)
  type: boolean
  inputBinding:
    prefix: -c
- id: verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: breaking_edge_density
  doc: breaking edge density [0.10]
  type: string
  inputBinding:
    prefix: -b
- id: the_oncefailinactiveforever_mode
  doc: the once-fail-inactive-forever mode
  type: boolean
  inputBinding:
    prefix: -O
- id: weight_resolution_for
  doc: weight resolution for '-O' [5]
  type: boolean
  inputBinding:
    prefix: -r
- id: category_file
  doc: category file
  type: File
  inputBinding:
    prefix: -C
- id: stringent_level_strictest
  doc: stringent level ('3' is the strictest) [2]
  type: string
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- hcluster_sg
