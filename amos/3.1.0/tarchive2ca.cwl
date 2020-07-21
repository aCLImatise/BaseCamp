class: CommandLineTool
id: ../../../tarchive2ca.cwl
inputs:
- id: prefix_output_files
  doc: prefix for the output files
  type: string
  inputBinding:
    prefix: -o
- id: file_containing_ranges
  doc: file containing clear ranges for the reads.  If this file is provided, any
    sequence that does not appear in it is excluded from the output.
  type: string
  inputBinding:
    prefix: -c
- id: tabdelimited_file_libid
  doc: tab-delimited file of lib_id, mean, stdev
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- tarchive2ca
