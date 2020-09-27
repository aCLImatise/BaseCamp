class: CommandLineTool
id: famsa.cwl
inputs:
- id: in_threads_means_default
  doc: '- no. of threads, 0 means all available (default: 0)'
  type: long
  inputBinding:
    prefix: -t
- id: in_verbose_mode_show
  doc: '- verbose mode, show timing information (default: disabled)'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_gt
  doc: "<sl | upgma | import <file>> - guide tree method (default: sl):\n* sl - single\
    \ linkage\n* upgma - UPGMA\n* import <file> - imported from a Newick file"
  type: boolean
  inputBinding:
    prefix: -gt
- id: in_gt_export
  doc: '- export a guide tree to output file in Newick format'
  type: File
  inputBinding:
    prefix: -gt_export
- id: in_dist_export
  doc: '- export a distance matrix to output file in CSV format'
  type: File
  inputBinding:
    prefix: -dist_export
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gt_export
  doc: '- export a guide tree to output file in Newick format'
  type: File
  outputBinding:
    glob: $(inputs.in_gt_export)
- id: out_dist_export
  doc: '- export a distance matrix to output file in CSV format'
  type: File
  outputBinding:
    glob: $(inputs.in_dist_export)
cwlVersion: v1.1
baseCommand:
- famsa
