class: CommandLineTool
id: dcmsign.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug                debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level            [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config           [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__readdataset_read
  doc: --read-dataset         read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: in__readxferauto_use
  doc: =   --read-xfer-auto       use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: in_td
  doc: --read-xfer-detect     ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: -td
- id: in_te
  doc: --read-xfer-little     read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -te
- id: in_tb
  doc: --read-xfer-big        read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: -tb
- id: in_ti
  doc: --read-xfer-implicit   read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -ti
- id: in_verify
  doc: verify all signatures (default)
  type: boolean
  inputBinding:
    prefix: --verify
- id: in_pw
  doc: --null-passwd          use empty string as password
  type: boolean
  inputBinding:
    prefix: -pw
- id: in_pem_keys
  doc: read keys/certificates as PEM file (default)
  type: boolean
  inputBinding:
    prefix: --pem-keys
- id: in_der_keys
  doc: read keys/certificates as DER file
  type: boolean
  inputBinding:
    prefix: --der-keys
- id: in_pf
  doc: --profile-none         don't enforce any signature profile (default)
  type: boolean
  inputBinding:
    prefix: -pf
- id: in_tf
  doc: "--tag-file             [f]ilename: string\nread list of tags from text file"
  type: boolean
  inputBinding:
    prefix: -tf
- id: in_fn
  doc: --format-new           use correct DICOM signature format (default)
  type: boolean
  inputBinding:
    prefix: -fn
- id: in_fo
  doc: "--format-old           use old (pre-3.5.4) DCMTK signature format,\nnon-conformant\
    \ if signature includes\ncompressed pixel data"
  type: boolean
  inputBinding:
    prefix: -fo
- id: in__lengthundefined_write
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
- id: in_dcm_file_in
  doc: DICOM input filename to be processed
  type: string
  inputBinding:
    position: 0
- id: in_dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 1
- id: in_string
  doc: use specified password
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmsign
