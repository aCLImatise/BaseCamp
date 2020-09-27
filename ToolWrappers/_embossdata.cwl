class: CommandLineTool
id: _embossdata.cwl
inputs:
- id: in_show_all
  doc: toggle     Show all potential EMBOSS data files
  type: boolean
  inputBinding:
    prefix: -showall
- id: in_outfile
  doc: "outfile    [stdout] This specifies the name of the file\nthat the results\
    \ of a search for a file in\nthe various data directories is written to.\nBy default\
    \ these results are written to the\nscreen (stdout)."
  type: boolean
  inputBinding:
    prefix: -outfile
- id: in_reject
  doc: "selection  [3, 5, 6] This specifies the names of the\nsub-directories of the\
    \ EMBOSS data directory\nthat should be ignored when displaying data\ndirectories."
  type: boolean
  inputBinding:
    prefix: -reject
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _embossdata
