class: CommandLineTool
id: hcluster_sg.cwl
inputs:
- id: in_minimum_edge_weight
  doc: minimum edge weight [20]
  type: long?
  inputBinding:
    prefix: -w
- id: in_minimum_edge_density
  doc: minimum edge density between a join [0.50]
  type: double?
  inputBinding:
    prefix: -s
- id: in_maximum_size
  doc: maximum size [500]
  type: long?
  inputBinding:
    prefix: -m
- id: in_output_file
  doc: output file [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_only_find_bypass
  doc: only find single-linkage clusters (bypass h-cluster)
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_verbose_mode
  doc: verbose mode
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_breaking_edge_density
  doc: breaking edge density [0.10]
  type: double?
  inputBinding:
    prefix: -b
- id: in_the_oncefailinactiveforever_mode
  doc: the once-fail-inactive-forever mode
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_weight_resolution_for
  doc: weight resolution for '-O' [5]
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_category_file
  doc: category file
  type: File?
  inputBinding:
    prefix: -C
- id: in_stringent_level_strictest
  doc: stringent level ('3' is the strictest) [2]
  type: long?
  inputBinding:
    prefix: -L
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- hcluster_sg
