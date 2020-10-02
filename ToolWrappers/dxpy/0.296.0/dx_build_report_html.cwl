class: CommandLineTool
id: dx_build_report_html.cwl
inputs:
- id: in_remote
  doc: "Destination route. Can be: (1) a project ID, (2) a\npath, with or without\
    \ object name (e.g.\n/PATH/REPORT_NAME), (3) project ID + path (e.g.\nPROJECT:/PATH/REPORT_NAME)"
  type: File
  inputBinding:
    prefix: --remote
- id: in_local
  doc: Local file to save baked HTML to
  type: File
  inputBinding:
    prefix: --local
- id: in_width
  doc: Width of the final report, in pixels
  type: string
  inputBinding:
    prefix: --width
- id: in_height
  doc: "Height of the final report, in pixels\n"
  type: string
  inputBinding:
    prefix: --height
- id: in_src
  doc: Source image or HTML file(s)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx-build-report-html
