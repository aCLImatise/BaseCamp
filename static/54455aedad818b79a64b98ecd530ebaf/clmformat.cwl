class: CommandLineTool
id: clmformat.cwl
inputs:
- id: in_icl
  doc: read clustering matrix from file
  type: File?
  inputBinding:
    prefix: -icl
- id: in_imx
  doc: read graph matrix from file
  type: File?
  inputBinding:
    prefix: -imx
- id: in_tab
  doc: read tab file
  type: File?
  inputBinding:
    prefix: -tab
- id: in_pi
  doc: apply inflation to input graph
  type: string?
  inputBinding:
    prefix: -pi
- id: in_tf
  doc: apply transformation to input graph
  type: string?
  inputBinding:
    prefix: -tf
- id: in_adapt
  doc: allow non-matching domains and defective clusterings
  type: boolean?
  inputBinding:
    prefix: --adapt
- id: in_subgraph
  doc: take subgraph (when domains don't match)
  type: boolean?
  inputBinding:
    prefix: --subgraph
- id: in_lazy_tab
  doc: allow mismatched tab-file
  type: boolean?
  inputBinding:
    prefix: --lazy-tab
- id: in_zmm
  doc: use zoem definitions from this file
  type: File?
  inputBinding:
    prefix: -zmm
- id: in_fmt
  doc: write logical output to this file
  type: File?
  inputBinding:
    prefix: -fmt
- id: in_dir
  doc: use directory as base entry point, split output
  type: Directory?
  inputBinding:
    prefix: -dir
- id: in_in_fix
  doc: insert <str> after base name or base directory
  type: Directory?
  inputBinding:
    prefix: -infix
- id: in_fancy
  doc: use with -dump/--dump if you want html/txt files as well
  type: boolean?
  inputBinding:
    prefix: --fancy
- id: in_lump_count
  doc: batch size threshold for split behaviour
  type: long?
  inputBinding:
    prefix: -lump-count
- id: in_dump
  doc: dump line-based output, default one cluster per line
  type: string?
  inputBinding:
    prefix: -dump
- id: in_dump_pairs
  doc: write cluster/element pair per single line
  type: boolean?
  inputBinding:
    prefix: --dump-pairs
- id: in_dump_measures
  doc: include performance measures in dump output
  type: boolean?
  inputBinding:
    prefix: --dump-measures
- id: in_dump_node_sep
  doc: the separator for node indices or node labels
  type: string?
  inputBinding:
    prefix: -dump-node-sep
- id: in_nsm
  doc: write node stickiness matrix to file
  type: File?
  inputBinding:
    prefix: -nsm
- id: in_ccm
  doc: write cluster cohesion matrix to file
  type: File?
  inputBinding:
    prefix: -ccm
- id: in_help
  doc: this info
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fmt
  doc: write logical output to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_fmt)
- id: out_dir
  doc: use directory as base entry point, split output
  type: Directory?
  outputBinding:
    glob: $(inputs.in_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- clmformat
