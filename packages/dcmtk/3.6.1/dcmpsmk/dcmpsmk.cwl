class: CommandLineTool
id: dcmpsmk.cwl
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
  doc: =  --read-xfer-auto       use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: in_read_xfer_detect
  doc: ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: --read-xfer-detect
- id: in_read_xfer_little
  doc: read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-little
- id: in_read_xfer_big
  doc: read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-big
- id: in_read_xfer_implicit
  doc: read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-implicit
- id: in__voiignore_ignore
  doc: --voi-ignore           ignore VOI LUT and window center/width
  type: boolean
  inputBinding:
    prefix: -V
- id: in__curveignore_ignore
  doc: --curve-ignore         ignore curve data
  type: boolean
  inputBinding:
    prefix: -c
- id: in__overlayignore_ignore
  doc: --overlay-ignore       ignore overlays
  type: boolean
  inputBinding:
    prefix: -o
- id: in__shutterignore_ignore
  doc: --shutter-ignore       ignore shutter
  type: boolean
  inputBinding:
    prefix: -s
- id: in__plutignore_shape
  doc: --plut-ignore          ignore presentation LUT shape
  type: boolean
  inputBinding:
    prefix: -p
- id: in_location_none
  doc: image reference without location (default)
  type: boolean
  inputBinding:
    prefix: --location-none
- id: in_location_network
  doc: "[a]etitle: string\nimage located at application entity a"
  type: boolean
  inputBinding:
    prefix: --location-network
- id: in_location_media
  doc: "[f]ilesetID, fileset[UID]: string\nimage located on storage medium"
  type: boolean
  inputBinding:
    prefix: --location-media
- id: in_dcm_file_in
  doc: DICOM image file(s) to be read
  type: string
  inputBinding:
    position: 0
- id: in_dcm_file_out
  doc: DICOM presentation state file to be created
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmpsmk
