class: CommandLineTool
id: ffindex_modify.cwl
inputs:
- id: in_sort_index_file
  doc: sort index file
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_unlink_entry_remove
  doc: unlink entry (remove from index only)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_print_version_info
  doc: print version and other info then exit
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ffindex_modify
