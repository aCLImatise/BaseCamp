class: CommandLineTool
id: dcm2xml.cwl
inputs:
- id: dcm_file_in
  doc: DICOM input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: xml_file_out
  doc: 'XML output filename (default: stdout)'
  type: string
  inputBinding:
    position: 1
- id: q
  doc: --quiet               quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose             verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug               debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level           [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config          [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: f
  doc: --read-dataset        read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: t
  doc: =   --read-xfer-auto      use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: td
  doc: --read-xfer-detect    ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: -td
- id: te
  doc: --read-xfer-little    read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -te
- id: tb
  doc: --read-xfer-big       read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: -tb
- id: ti
  doc: --read-xfer-implicit  read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -ti
outputs: []
cwlVersion: v1.1
baseCommand:
- dcm2xml
