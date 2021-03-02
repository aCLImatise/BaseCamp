class: CommandLineTool
id: tarchive2ca.cwl
inputs:
- id: in_prefix_output_files
  doc: prefix for the output files
  type: string?
  inputBinding:
    prefix: -o
- id: in_file_containing_ranges
  doc: "file containing clear ranges for the reads.  If this file\nis provided, any\
    \ sequence that does not appear in it is excluded\nfrom the output."
  type: File?
  inputBinding:
    prefix: -c
- id: in_tabdelimited_file_libid
  doc: tab-delimited file of lib_id, mean, stdev
  type: File?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_containing_ranges
  doc: "file containing clear ranges for the reads.  If this file\nis provided, any\
    \ sequence that does not appear in it is excluded\nfrom the output."
  type: File?
  outputBinding:
    glob: $(inputs.in_file_containing_ranges)
hints: []
cwlVersion: v1.1
baseCommand:
- tarchive2ca
