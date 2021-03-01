class: CommandLineTool
id: multiIntersectBed.cwl
inputs:
- id: in_cluster
  doc: Invoke Ryan Layers's clustering algorithm.
  type: boolean?
  inputBinding:
    prefix: -cluster
- id: in_header
  doc: "Print a header line.\n(chrom/start/end + names of each file)."
  type: boolean?
  inputBinding:
    prefix: -header
- id: in_names
  doc: "A list of names (one/file) to describe each file in -i.\nThese names will\
    \ be printed in the header line."
  type: boolean?
  inputBinding:
    prefix: -names
- id: in_use_genome_file
  doc: "Use genome file to calculate empty regions.\n- STRING."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_empty
  doc: "Report empty regions (i.e., start/end intervals w/o\nvalues in all files).\n\
    - Requires the '-g FILE' parameter."
  type: boolean?
  inputBinding:
    prefix: -empty
- id: in_filler
  doc: "Use TEXT when representing intervals having no value.\n- Default is '0', but\
    \ you can use 'N/A' or any text."
  type: long?
  inputBinding:
    prefix: -filler
- id: in_examples
  doc: Show detailed usage examples.
  type: boolean?
  inputBinding:
    prefix: -examples
- id: in_i
  doc: ''
  type: File[]
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_multi_inter
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- multiIntersectBed
