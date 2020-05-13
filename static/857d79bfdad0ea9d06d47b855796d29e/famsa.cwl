class: CommandLineTool
id: famsa.cwl
inputs:
- id: parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: gap
  doc: 'cost (default: 14.85)'
  type: string
  inputBinding:
    prefix: '- gap'
- id: gap
  doc: 'cost (default: 1.25)'
  type: string
  inputBinding:
    prefix: '- gap'
- id: terminal
  doc: 'open cost (default: 0.66)'
  type: string
  inputBinding:
    prefix: '- terminal'
- id: terminal
  doc: 'extenstion cost (default: 0.66)'
  type: string
  inputBinding:
    prefix: '- terminal'
- id: gap
  doc: 'scaller div-term (default: 7)'
  type: string
  inputBinding:
    prefix: '- gap'
- id: gap
  doc: 'scaller log-term (default: 45)'
  type: string
  inputBinding:
    prefix: '- gap'
- id: disable
  doc: 'cost rescaling (default: enabled)'
  type: string
  inputBinding:
    prefix: '- disable'
- id: disable
  doc: 'optimization (default: enabled)'
  type: string
  inputBinding:
    prefix: '- disable'
- id: disable
  doc: 'of pairs optimization during refinement (default: enabled)'
  type: string
  inputBinding:
    prefix: '- disable'
- id: no
  doc: '. of refinement iterations (default: 100)'
  type: string
  inputBinding:
    prefix: '- no'
- id: force
  doc: (by default the refinement is disabled for sets larger than 1000 seq.)
  type: string
  inputBinding:
    prefix: '- force'
- id: no
  doc: '. of threads, 0 means all available (default: 0)'
  type: string
  inputBinding:
    prefix: '- no'
- id: verbose
  doc: ', show timing information (default: disabled)'
  type: string
  inputBinding:
    prefix: '- verbose'
- id: gt
  doc: '<sl | upgma | import <file>> - guide tree method (default: sl): * sl - single
    linkage * upgma - UPGMA * import <file> - imported from a Newick file'
  type: boolean
  inputBinding:
    prefix: -gt
- id: me_do_id_tree
  doc: 'heuristic for speeding up tree construction (default: disabled)'
  type: string
  inputBinding:
    prefix: -medoidtree
- id: part_tree
  doc: 'heuristic for speeding up tree construction (default: disabled)'
  type: string
  inputBinding:
    prefix: -parttree
- id: gt_export
  doc: guide tree to output file in Newick format
  type: string
  inputBinding:
    prefix: -gt_export
- id: dist_export
  doc: distance matrix to output file in CSV format
  type: string
  inputBinding:
    prefix: -dist_export
outputs: []
cwlVersion: v1.1
baseCommand:
- famsa
