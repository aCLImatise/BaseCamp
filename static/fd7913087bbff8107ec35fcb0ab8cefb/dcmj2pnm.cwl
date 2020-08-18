class: CommandLineTool
id: ../../../dcmj2pnm.cwl
inputs:
- id: _quiet_print
  doc: --quiet               quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_verbose
  doc: --verbose             verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: _debug_debug
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
- id: _readdataset_read
  doc: --read-dataset        read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: _readxferauto_use
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
- id: mf
  doc: --meta-none           no PNG file meta information
  type: boolean
  inputBinding:
    prefix: -mf
- id: im
  doc: --image-info          print image details (requires verbose mode)
  type: boolean
  inputBinding:
    prefix: -im
- id: _nooutput_create
  doc: --no-output           do not create any output (useful with -im)
  type: boolean
  inputBinding:
    prefix: -o
- id: dcm_file_in
  doc: DICOM input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: bitmap_out
  doc: 'output filename to be written (default: stdout)'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmj2pnm
