class: CommandLineTool
id: bedtools_split.cwl
inputs:
- id: in_input
  doc: (file)       BED input file (req'd).
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_number
  doc: (int)       Number of files to create (req'd).
  type: boolean?
  inputBinding:
    prefix: --number
- id: in_prefix
  doc: (string)    Output BED file prefix.
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_algorithm
  doc: "(string) Algorithm used to split data.\n* size (default): uses a heuristic\
    \ algorithm to group the items\nso all files contain the ~ same number of bases\n\
    * simple : route records such that each split file has\napproximately equal records\
    \ (like Unix split)."
  type: boolean?
  inputBinding:
    prefix: --algorithm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: (string)    Output BED file prefix.
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- bedtools
- split
