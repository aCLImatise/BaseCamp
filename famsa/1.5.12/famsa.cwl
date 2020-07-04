class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/famsa.cwl
inputs:
- id: go
  doc: '- gap open cost (default: 14.85)'
  type: string
  inputBinding:
    prefix: -go
- id: ge
  doc: '- gap extension cost (default: 1.25)'
  type: string
  inputBinding:
    prefix: -ge
- id: t_go
  doc: '- terminal gap open cost (default: 0.66)'
  type: string
  inputBinding:
    prefix: -tgo
- id: tge
  doc: '- terminal gap extenstion cost (default: 0.66)'
  type: string
  inputBinding:
    prefix: -tge
- id: gsd
  doc: '- gap cost scaller div-term (default: 7)'
  type: string
  inputBinding:
    prefix: -gsd
- id: gsl
  doc: '- gap cost scaller log-term (default: 45)'
  type: string
  inputBinding:
    prefix: -gsl
- id: dgr
  doc: '- disable gap cost rescaling (default: enabled)'
  type: boolean
  inputBinding:
    prefix: -dgr
- id: d_go
  doc: '- disable gap optimization (default: enabled)'
  type: boolean
  inputBinding:
    prefix: -dgo
- id: dsp
  doc: '- disable sum of pairs optimization during refinement (default: enabled)'
  type: boolean
  inputBinding:
    prefix: -dsp
- id: refinement_iterations_default
  doc: '- no. of refinement iterations (default: 100)'
  type: string
  inputBinding:
    prefix: -r
- id: fr
  doc: '- force refinement (by default the refinement is disabled for sets larger
    than 1000 seq.)'
  type: boolean
  inputBinding:
    prefix: -fr
- id: threads_means_default
  doc: '- no. of threads, 0 means all available (default: 0)'
  type: string
  inputBinding:
    prefix: -t
- id: verbose_mode_show
  doc: '- verbose mode, show timing information (default: disabled)'
  type: boolean
  inputBinding:
    prefix: -v
- id: gt
  doc: '<sl | upgma | import <file>> - guide tree method (default: sl): * sl - single
    linkage * upgma - UPGMA * import <file> - imported from a Newick file'
  type: boolean
  inputBinding:
    prefix: -gt
- id: me_do_id_tree
  doc: '- use MedoidTree heuristic for speeding up tree construction (default: disabled)'
  type: boolean
  inputBinding:
    prefix: -medoidtree
- id: part_tree
  doc: '- use PartTree heuristic for speeding up tree construction (default: disabled)'
  type: boolean
  inputBinding:
    prefix: -parttree
- id: gt_export
  doc: '- export a guide tree to output file in Newick format'
  type: boolean
  inputBinding:
    prefix: -gt_export
- id: dist_export
  doc: '- export a distance matrix to output file in CSV format'
  type: boolean
  inputBinding:
    prefix: -dist_export
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
outputs: []
cwlVersion: v1.1
baseCommand:
- famsa
