class: CommandLineTool
id: ariba_refquery_prepareref directory.cwl
inputs:
- id: in_prepare_ref_dir
  doc: Name of directory output by prepareref
  type: string
  inputBinding:
    position: 0
- id: in_search_name
  doc: Name of cluster or sequence to search for
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ariba
- refquery
- prepareref directory
