class: CommandLineTool
id: prophyle_analyze.py.cwl
inputs:
- id: in_use_stdin_files
  doc: Use '-' for stdin or multiple files with
  type: string
  inputBinding:
    prefix: -f
- id: in_statistics_use_wdefault
  doc: "['w', 'u', 'wl', 'ul']\nStatistics to use for the computation of histograms:\
    \ w\n(default) => weighted assignments; u => unique\nassignments, non-weighted;\
    \ wl => weighted assignments,\npropagated to leaves; ul => unique assignments,\n\
    propagated to leaves."
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prophyle_analyze.py
