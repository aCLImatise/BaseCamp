class: CommandLineTool
id: atlas_validation.py.cwl
inputs:
- id: in_data_dir
  doc: Path to the directory with SDRF and data files
  type: File
  inputBinding:
    prefix: --data_dir
- id: in_verbose
  doc: Option to output detailed logging (debug level).
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_hca
  doc: Mark experiment as HCA import
  type: boolean
  inputBinding:
    prefix: -hca
- id: in_single_cell
  doc: Force submission type to be 'singlecell'
  type: boolean
  inputBinding:
    prefix: --singlecell
- id: in_sequencing
  doc: Force submission type to be 'sequencing'
  type: boolean
  inputBinding:
    prefix: --sequencing
- id: in_microarray
  doc: Force submission type to be 'microarray'
  type: boolean
  inputBinding:
    prefix: --microarray
- id: in_skip_file_checks
  doc: "Skip file and URI checks\n"
  type: boolean
  inputBinding:
    prefix: --skip-file-checks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- atlas_validation.py
