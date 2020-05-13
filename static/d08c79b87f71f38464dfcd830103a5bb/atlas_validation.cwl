class: CommandLineTool
id: atlas_validation.py.cwl
inputs:
- id: idf
  doc: Path to the MAGE-TAB IDF file
  type: string
  inputBinding:
    position: 0
- id: data_dir
  doc: Path to the directory with SDRF and data files
  type: string
  inputBinding:
    prefix: --data_dir
- id: verbose
  doc: Option to output detailed logging (debug level).
  type: boolean
  inputBinding:
    prefix: --verbose
- id: hca
  doc: Mark experiment as HCA import
  type: boolean
  inputBinding:
    prefix: -hca
- id: single_cell
  doc: Force submission type to be 'singlecell'
  type: boolean
  inputBinding:
    prefix: --singlecell
- id: sequencing
  doc: Force submission type to be 'sequencing'
  type: boolean
  inputBinding:
    prefix: --sequencing
- id: microarray
  doc: Force submission type to be 'microarray'
  type: boolean
  inputBinding:
    prefix: --microarray
- id: skip_file_checks
  doc: Skip file and URI checks
  type: boolean
  inputBinding:
    prefix: --skip-file-checks
outputs: []
cwlVersion: v1.1
baseCommand:
- atlas_validation.py
