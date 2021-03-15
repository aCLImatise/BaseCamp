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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ffindex:0.98--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- ffindex_modify
