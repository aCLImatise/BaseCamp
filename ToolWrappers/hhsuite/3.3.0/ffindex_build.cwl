class: CommandLineTool
id: ffindex_build.cwl
inputs:
- id: in_append_filesindexes_also
  doc: append files/indexes, also needed for sorting an already existing ffindex
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_second_ffindex_data
  doc: a second ffindex data file for inserting/appending
  type: File?
  inputBinding:
    prefix: -d
- id: in_second_ffindex_index
  doc: a second ffindex index file for inserting/appending
  type: File?
  inputBinding:
    prefix: -i
- id: in_sort_index_file
  doc: "sort index file, so that the index can queried.\nAnother append operations\
    \ can be done without sorting."
  type: boolean?
  inputBinding:
    prefix: -s
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
  dockerPull: quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0
cwlVersion: v1.1
baseCommand:
- ffindex_build
