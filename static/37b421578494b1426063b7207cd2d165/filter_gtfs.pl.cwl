class: CommandLineTool
id: filter_gtfs.pl.cwl
inputs:
- id: in_list_filter_types
  doc: ': List filter types'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_inputs_gtf_files
  doc: ': Inputs are gtf files instead of list files'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_check_alternative_faster
  doc: ': Do not check for alternative splices. (Faster)'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter_gtfs.pl
