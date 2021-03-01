class: CommandLineTool
id: nb_classify.cwl
inputs:
- id: in_contact
  doc: Print contact information.
  type: boolean?
  inputBinding:
    prefix: --contact
- id: in_number_fragments_classify
  doc: Number of fragments to classify at a time (default = 50000).
  type: long?
  inputBinding:
    prefix: -b
- id: in_log_likelihood_top
  doc: "Log likelihood of the top T models will be returned. If you\nwish to have\
    \ the log likelihood of all models in the\nresults file set T = 0 (default = 0)."
  type: long?
  inputBinding:
    prefix: -t
- id: in_level_output_information
  doc: Level of output information (default = 1).
  type: long?
  inputBinding:
    prefix: -v
- id: in_extension_add_temporary
  doc: Extension to add to temporary files (default = txt).
  type: string?
  inputBinding:
    prefix: -e
- id: in_r
  doc: ''
  type: File?
  inputBinding:
    prefix: -r
- id: in_m
  doc: ''
  type: File?
  inputBinding:
    prefix: -m
- id: in_q
  doc: ''
  type: File?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nb-classify
