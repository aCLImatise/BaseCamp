class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ffindex_modify.cwl
inputs:
- id: file_line_containing
  doc: file each line containing a filename -f can be specified up to 4096 times
  type: File
  inputBinding:
    prefix: -f
- id: sort_index_file
  doc: sort index file
  type: boolean
  inputBinding:
    prefix: -s
- id: unlink_entry_remove
  doc: unlink entry (remove from index only)
  type: boolean
  inputBinding:
    prefix: -u
- id: print_version_info
  doc: print version and other info then exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_modify
