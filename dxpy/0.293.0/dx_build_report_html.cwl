class: CommandLineTool
id: dx_build_report_html.cwl
inputs:
- id: src
  doc: Source image or HTML file(s)
  type: string
  inputBinding:
    position: 0
- id: remote
  doc: 'Destination route. Can be: (1) a project ID, (2) a path, with or without object
    name (e.g. /PATH/REPORT_NAME), (3) project ID + path (e.g. PROJECT:/PATH/REPORT_NAME)'
  type: string
  inputBinding:
    prefix: --remote
- id: local
  doc: Local file to save baked HTML to
  type: string
  inputBinding:
    prefix: --local
- id: width
  doc: Width of the final report, in pixels
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: Height of the final report, in pixels
  type: string
  inputBinding:
    prefix: --height
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-build-report-html
