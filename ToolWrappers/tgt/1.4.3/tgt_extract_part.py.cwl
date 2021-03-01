class: CommandLineTool
id: tgt_extract_part.py.cwl
inputs:
- id: in_start_time_extracted
  doc: Start time of the interval to be extracted.
  type: string?
  inputBinding:
    prefix: -s
- id: in_end_time_extracted
  doc: End time of the interval to be extracted.
  type: string?
  inputBinding:
    prefix: -e
- id: in_path_output_file
  doc: "Path to the output file. Defaults to the original path with\n_part appended\
    \ to the filename.\n"
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_file
  doc: "Path to the output file. Defaults to the original path with\n_part appended\
    \ to the filename.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_path_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- tgt-extract-part.py
