class: CommandLineTool
id: qgrs.cwl
inputs:
- id: in_csv
  doc: output in csv mode
  type: boolean
  inputBinding:
    prefix: -csv
- id: in_json
  doc: output in JSON mode
  type: boolean
  inputBinding:
    prefix: -json
- id: in_read_input_file
  doc: '[input filename]   read input from a file as specified (defaults to stdin)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_write_output_file
  doc: '[output filename]  write output to file as specified (defaults to stdout)'
  type: File
  inputBinding:
    prefix: -o
- id: in_filter_output_number
  doc: '[n]                filter output to QGRS with number tetrads equal to or greater
    than n (defaults to 2)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_gscore_equal_greater
  doc: '[n]                filter output to QGRS with g-score equal to or greater
    than n (defaults to 17)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_replace_g_characters
  doc: '[c]                replace all G characters within tetrads with given character.'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_include_qgrs_generated
  doc: include overlapping QGRS in output (very large outputs may be generated)
  type: boolean
  inputBinding:
    prefix: -v
- id: in_no_title
  doc: omit column titles in output (does not apply to JSON)
  type: boolean
  inputBinding:
    prefix: -notitle
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_file
  doc: '[output filename]  write output to file as specified (defaults to stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_write_output_file)
cwlVersion: v1.1
baseCommand:
- qgrs
