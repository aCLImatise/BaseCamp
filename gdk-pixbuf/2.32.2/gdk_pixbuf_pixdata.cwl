class: CommandLineTool
id: gdk_pixbuf_pixdata.cwl
inputs:
- id: g_fatal_warnings
  doc: make warnings fatal (abort)
  type: boolean
  inputBinding:
    prefix: --g-fatal-warnings
outputs: []
cwlVersion: v1.1
baseCommand:
- gdk-pixbuf-pixdata
