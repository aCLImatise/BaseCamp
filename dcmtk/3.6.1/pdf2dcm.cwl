class: CommandLineTool
id: pdf2dcm.cwl
inputs:
- id: pdf_file_in
  doc: PDF input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 1
- id: q
  doc: --quiet              quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose            verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug              debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level          [l]evel: string constant (fatal, error, warn, info, debug,
    trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config         [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: annotation_no
  doc: PDF does not contain patient identifying data
  type: boolean
  inputBinding:
    prefix: --annotation-no
outputs: []
cwlVersion: v1.1
baseCommand:
- pdf2dcm
