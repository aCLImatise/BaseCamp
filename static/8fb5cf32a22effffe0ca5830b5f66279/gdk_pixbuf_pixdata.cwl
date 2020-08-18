class: CommandLineTool
id: ../../../gdk_pixbuf_pixdata.cwl
inputs:
- id: g_fatal_warnings
  doc: make warnings fatal (abort)
  type: boolean
  inputBinding:
    prefix: --g-fatal-warnings
- id: gdk_pixbuf_pix_data_three_dot_zero
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- gdk-pixbuf-pixdata
