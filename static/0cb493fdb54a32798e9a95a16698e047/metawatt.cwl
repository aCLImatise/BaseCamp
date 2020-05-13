class: CommandLineTool
id: metawatt.cwl
inputs:
- id: threads
  doc: '[number of threads/processors]'
  type: boolean
  inputBinding:
    prefix: --threads
- id: temp_folder
  doc: '[temp folder used]'
  type: boolean
  inputBinding:
    prefix: --temp-folder
- id: cov_rel_weight
  doc: '[relative weight of differential coverage scores versus tetranucleotide scores]'
  type: boolean
  inputBinding:
    prefix: --cov-rel-weight
- id: skip_database_update
  doc: (do not update databases)
  type: boolean
  inputBinding:
    prefix: --skip-database-update
- id: check_dependencies
  doc: (check dependencies and exit)
  type: boolean
  inputBinding:
    prefix: --check-dependencies
outputs: []
cwlVersion: v1.1
baseCommand:
- metawatt
