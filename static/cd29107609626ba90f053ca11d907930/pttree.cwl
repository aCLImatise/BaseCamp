class: CommandLineTool
id: pttree.cwl
inputs:
- id: in_max_level
  doc: "maximum branch depth of tree to display (-1 == no\nlimit)"
  type: long?
  inputBinding:
    prefix: --max-level
- id: in_sort_by
  doc: "artificially order nodes, can be either \"size\", \"name\"\nor \"none\""
  type: long?
  inputBinding:
    prefix: --sort-by
- id: in_print_size
  doc: print size of each node/branch
  type: boolean?
  inputBinding:
    prefix: --print-size
- id: in_no_print_size
  doc: print shape of each node
  type: boolean?
  inputBinding:
    prefix: --no-print-size
- id: in_print_compression
  doc: print compression library(level) for each compressed
  type: boolean?
  inputBinding:
    prefix: --print-compression
- id: in_print_percent
  doc: "print size of each node as a % of the total tree size\non disk"
  type: boolean?
  inputBinding:
    prefix: --print-percent
- id: in_no_print_percent
  doc: report sizes in SI units (1 MB == 10^6 B)
  type: boolean?
  inputBinding:
    prefix: --no-print-percent
- id: in_use_binary_units
  doc: report sizes in binary units (1 MiB == 2^20 B)
  type: boolean?
  inputBinding:
    prefix: --use-binary-units
- id: in_node
  doc: --no-print-compression
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pttree
