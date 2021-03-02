class: CommandLineTool
id: csb_csfrag.cwl
inputs:
- id: in_database
  doc: PDBS25 database directory (containing PDBS25cs.scs)
  type: Directory?
  inputBinding:
    prefix: --database
- id: in_shifts
  doc: "assigned chemical shifts table (NMR STAR file\nfragment)"
  type: File?
  inputBinding:
    prefix: --shifts
- id: in_window
  doc: sliding window size (default=8)
  type: long?
  inputBinding:
    prefix: --window
- id: in_top
  doc: maximum number per starting position (default=25)
  type: long?
  inputBinding:
    prefix: --top
- id: in_cpu
  doc: maximum degree of parallelism (default=8)
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_verbosity
  doc: verbosity level (default=1)
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_output
  doc: output directory (default=.)
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_filtered_map
  doc: "make an additional filtered fragment map of centroids\n(default=False)\n"
  type: boolean?
  inputBinding:
    prefix: --filtered-map
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output directory (default=.)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- csb-csfrag
