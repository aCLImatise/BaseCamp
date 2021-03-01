class: CommandLineTool
id: predict.py_phenotypes.cwl
inputs:
- id: in_voters
  doc: "use this number of voters for the classification\n"
  type: long?
  inputBinding:
    prefix: --voters
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_pt_models
  doc: archive with the phenotype predictors
  type: string
  inputBinding:
    position: 1
- id: in_out_dir
  doc: directory for the phenotype predictions
  type: string
  inputBinding:
    position: 2
- id: in_summary_file_pfams
  doc: summary file with pfams
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- predict.py
- phenotypes
