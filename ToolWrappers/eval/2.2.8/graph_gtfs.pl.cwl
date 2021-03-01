class: CommandLineTool
id: graph_gtfs.pl.cwl
inputs:
- id: in_display_list_values
  doc: ': Display list of possible x and y values for graphs'
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_load_gtfs_instead
  doc: ': Load GTFs instead of lists of GTFs'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_quick_load_file
  doc: ': Quick load the gtf file.  Do not check them for errors.'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_load_resolution_default
  doc: ":  Load resolution from this file\ninstead of users .eval.rc or default"
  type: File?
  inputBinding:
    prefix: -r
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
- graph_gtfs.pl
