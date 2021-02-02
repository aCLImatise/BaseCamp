class: CommandLineTool
id: ../../../fitsheader.cwl
inputs:
- id: in_extension
  doc: "specify the extension by name or number; this argument\ncan be repeated to\
    \ select multiple extensions"
  type: long
  inputBinding:
    prefix: --extension
- id: in_keyword
  doc: "specify a keyword; this argument can be repeated to\nselect multiple keywords;\
    \ also supports wildcards"
  type: string
  inputBinding:
    prefix: --keyword
- id: in_print_headers_machinereadable
  doc: "[FORMAT], --table [FORMAT]\nprint the header(s) in machine-readable table\
    \ format;\nthe default format is \"ascii.fixed_width\" (can be\n\"ascii.csv\"\
    , \"ascii.html\", \"ascii.latex\", \"fits\", etc)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_compressed
  doc: "for compressed image data, show the true header which\ndescribes the compression\
    \ rather than the data\n"
  type: boolean
  inputBinding:
    prefix: --compressed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fitsheader
