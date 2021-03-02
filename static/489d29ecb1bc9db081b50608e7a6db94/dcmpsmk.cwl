class: CommandLineTool
id: dcmpsmk.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_read_dataset
  doc: read data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --read-dataset
- id: in__readxferauto_use
  doc: =  --read-xfer-auto       use TS recognition (default)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_read_xfer_detect
  doc: ignore TS specified in the file meta header
  type: boolean?
  inputBinding:
    prefix: --read-xfer-detect
- id: in_read_xfer_little
  doc: read with explicit VR little endian TS
  type: boolean?
  inputBinding:
    prefix: --read-xfer-little
- id: in_read_xfer_big
  doc: read with explicit VR big endian TS
  type: boolean?
  inputBinding:
    prefix: --read-xfer-big
- id: in_read_xfer_implicit
  doc: read with implicit VR little endian TS
  type: boolean?
  inputBinding:
    prefix: --read-xfer-implicit
- id: in_voi_ignore
  doc: ignore VOI LUT and window center/width
  type: boolean?
  inputBinding:
    prefix: --voi-ignore
- id: in_curve_ignore
  doc: ignore curve data
  type: boolean?
  inputBinding:
    prefix: --curve-ignore
- id: in_overlay_ignore
  doc: ignore overlays
  type: boolean?
  inputBinding:
    prefix: --overlay-ignore
- id: in_shutter_ignore
  doc: ignore shutter
  type: boolean?
  inputBinding:
    prefix: --shutter-ignore
- id: in_plut_ignore
  doc: ignore presentation LUT shape
  type: boolean?
  inputBinding:
    prefix: --plut-ignore
- id: in_location_none
  doc: image reference without location (default)
  type: boolean?
  inputBinding:
    prefix: --location-none
- id: in_location_network
  doc: "[a]etitle: string\nimage located at application entity a"
  type: boolean?
  inputBinding:
    prefix: --location-network
- id: in_location_media
  doc: "[f]ilesetID, fileset[UID]: string\nimage located on storage medium"
  type: boolean?
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- dcmpsmk
