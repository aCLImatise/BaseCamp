class: CommandLineTool
id: vecscreen.cwl
inputs:
- id: in_query_file_default
  doc: "Query File [File In]\ndefault = stdin"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_vecscreen_report_output
  doc: "VecScreen report Output File [File Out]\ndefault = stdout"
  type: File
  inputBinding:
    prefix: -o
- id: in_database_default_univec
  doc: "Database [String]\ndefault = UniVec"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_output_format_format
  doc: "Output format:\n0 = HTML format, with alignments\n1 = HTML format, no alignments\n\
    2 = Text list, with alignments\n3 = Text list, no alignments\n[Integer]\ndefault\
    \ = 0\n"
  type: boolean
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_vecscreen_report_output
  doc: "VecScreen report Output File [File Out]\ndefault = stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_vecscreen_report_output)
cwlVersion: v1.1
baseCommand:
- vecscreen
