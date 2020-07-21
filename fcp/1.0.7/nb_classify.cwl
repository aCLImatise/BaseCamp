class: CommandLineTool
id: ../../../nb_classify.cwl
inputs:
- id: contact
  doc: Print contact information.
  type: boolean
  inputBinding:
    prefix: --contact
- id: number_fragments_classify
  doc: Number of fragments to classify at a time (default = 50000).
  type: long
  inputBinding:
    prefix: -b
- id: log_likelihood_top
  doc: Log likelihood of the top T models will be returned. If you wish to have the
    log likelihood of all models in the results file set T = 0 (default = 0).
  type: long
  inputBinding:
    prefix: -t
- id: level_output_information
  doc: Level of output information (default = 1).
  type: long
  inputBinding:
    prefix: -v
- id: extension_add_temporary
  doc: Extension to add to temporary files (default = txt).
  type: string
  inputBinding:
    prefix: -e
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- nb-classify
