class: CommandLineTool
id: ../../../bismark2summary.cwl
inputs:
- id: in_oslash_basename
  doc: "Basename of the output file (optional). Generate a text file with all relevant\
    \ extracted values\n('basename.txt') as well as an HTML report ('basename.html').\
    \ If not specified explicitly, the\nthe basename is 'bismark_summary_report'."
  type: File
  inputBinding:
    prefix: -o/--basename
- id: in_title
  doc: "Optional HTML report title; use --title \"speech marks for text with spaces\"\
    . Default:\n'Bismark Summary Report'."
  type: string
  inputBinding:
    prefix: --title
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_basename
  doc: "Basename of the output file (optional). Generate a text file with all relevant\
    \ extracted values\n('basename.txt') as well as an HTML report ('basename.html').\
    \ If not specified explicitly, the\nthe basename is 'bismark_summary_report'."
  type: File
  outputBinding:
    glob: $(inputs.in_oslash_basename)
cwlVersion: v1.1
baseCommand:
- bismark2summary
