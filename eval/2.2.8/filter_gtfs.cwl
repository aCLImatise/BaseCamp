class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filter_gtfs.pl.cwl
inputs:
- id: list_filter_types
  doc: ': List filter types'
  type: boolean
  inputBinding:
    prefix: -f
- id: inputs_gtf_files
  doc: ': Inputs are gtf files instead of list files'
  type: boolean
  inputBinding:
    prefix: -g
- id: check_alternative_faster
  doc: ': Do not check for alternative splices. (Faster)'
  type: boolean
  inputBinding:
    prefix: -A
- id: quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.  '
  type: boolean
  inputBinding:
    prefix: -q
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_gtfs.pl
