class: CommandLineTool
id: dcm2xml.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet               quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose             verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug               debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level           [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config          [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__readdataset_read
  doc: --read-dataset        read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: in__readxferauto_use
  doc: =   --read-xfer-auto      use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: in_td
  doc: --read-xfer-detect    ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: -td
- id: in_te
  doc: --read-xfer-little    read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -te
- id: in_tb
  doc: --read-xfer-big       read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: -tb
- id: in_ti
  doc: --read-xfer-implicit  read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -ti
- id: in__loadshort_load
  doc: --load-short          do not load very long values (default)
  type: boolean
  inputBinding:
    prefix: -M
- id: in_dcmtk_format
  doc: output in DCMTK-specific format (default)
  type: boolean
  inputBinding:
    prefix: --dcmtk-format
- id: in_native_format
  doc: output in Native DICOM Model format (part 19)
  type: boolean
  inputBinding:
    prefix: --native-format
- id: in_wn
  doc: --no-element-name     do not write name of the DICOM data elements
  type: boolean
  inputBinding:
    prefix: -Wn
- id: in_dcm_file_in
  doc: DICOM input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: in_xml_file_out
  doc: 'XML output filename (default: stdout)'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcm2xml
