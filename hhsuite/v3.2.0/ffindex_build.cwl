class: CommandLineTool
id: ../../../ffindex_build.cwl
inputs:
- id: append_filesindexes_also
  doc: append files/indexes, also needed for sorting an already existing ffindex
  type: boolean
  inputBinding:
    prefix: -a
- id: second_ffindex_data
  doc: a second ffindex data file for inserting/appending
  type: string
  inputBinding:
    prefix: -d
- id: second_ffindex_index
  doc: a second ffindex index file for inserting/appending
  type: string
  inputBinding:
    prefix: -i
- id: file_containing_list
  doc: file containing a list of file names, one per line -f can be specified up to
    4096 times
  type: File
  inputBinding:
    prefix: -f
- id: sort_index_file
  doc: sort index file, so that the index can queried. Another append operations can
    be done without sorting.
  type: boolean
  inputBinding:
    prefix: -s
- id: print_version_info
  doc: print version and other info then exit
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_build
