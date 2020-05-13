class: CommandLineTool
id: dcmsign.cwl
inputs:
- id: dcm_file_in
  doc: DICOM input filename to be processed
  type: string
  inputBinding:
    position: 0
- id: dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 1
- id: q
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug                debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level            [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config           [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: f
  doc: --read-dataset         read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: t
  doc: =   --read-xfer-auto       use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: td
  doc: --read-xfer-detect     ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: -td
- id: te
  doc: --read-xfer-little     read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -te
- id: tb
  doc: --read-xfer-big        read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: -tb
- id: ti
  doc: --read-xfer-implicit   read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -ti
- id: verify
  doc: verify all signatures (default)
  type: boolean
  inputBinding:
    prefix: --verify
- id: pw
  doc: --null-passwd          use empty string as password
  type: boolean
  inputBinding:
    prefix: -pw
- id: pem_keys
  doc: read keys/certificates as PEM file (default)
  type: boolean
  inputBinding:
    prefix: --pem-keys
- id: der_keys
  doc: read keys/certificates as DER file
  type: boolean
  inputBinding:
    prefix: --der-keys
- id: t
  doc: '--tag                  [t]ag: "gggg,eeee" or dictionary name sign only specified
    tag (this option can be specified multiple times)'
  type: boolean
  inputBinding:
    prefix: -t
- id: tf
  doc: '--tag-file             [f]ilename: string read list of tags from text file'
  type: boolean
  inputBinding:
    prefix: -tf
- id: fn
  doc: --format-new           use correct DICOM signature format (default)
  type: boolean
  inputBinding:
    prefix: -fn
- id: fo
  doc: --format-old           use old (pre-3.5.4) DCMTK signature format, non-conformant
    if signature includes compressed pixel data
  type: boolean
  inputBinding:
    prefix: -fo
- id: e
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmsign
