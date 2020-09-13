class: CommandLineTool
id: ../../../metawatt.cwl
inputs:
- id: in_threads
  doc: '[number of threads/processors]'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_temp_folder
  doc: '[temp folder used]'
  type: boolean
  inputBinding:
    prefix: --temp-folder
- id: in_cov_rel_weight
  doc: '[relative weight of differential coverage scores versus tetranucleotide scores]'
  type: boolean
  inputBinding:
    prefix: --cov-rel-weight
- id: in_skip_database_update
  doc: (do not update databases)
  type: boolean
  inputBinding:
    prefix: --skip-database-update
- id: in_check_dependencies
  doc: (check dependencies and exit)
  type: boolean
  inputBinding:
    prefix: --check-dependencies
- id: in_jar
  doc: ''
  type: long
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- metawatt
