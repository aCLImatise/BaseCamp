class: CommandLineTool
id: ../../../dcmpsmk.cwl
inputs:
- id: _quiet_quiet
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_verbose
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: _debug_debug
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
- id: _readdataset_read
  doc: --read-dataset         read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: _readxferauto_use
  doc: =  --read-xfer-auto       use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: read_xfer_detect
  doc: ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: --read-xfer-detect
- id: read_xfer_little
  doc: read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-little
- id: read_xfer_big
  doc: read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-big
- id: read_xfer_implicit
  doc: read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: --read-xfer-implicit
- id: _voiignore_ignore
  doc: --voi-ignore           ignore VOI LUT and window center/width
  type: boolean
  inputBinding:
    prefix: -V
- id: _curveignore_ignore
  doc: --curve-ignore         ignore curve data
  type: boolean
  inputBinding:
    prefix: -c
- id: _overlayignore_ignore
  doc: --overlay-ignore       ignore overlays
  type: boolean
  inputBinding:
    prefix: -o
- id: _shutterignore_ignore
  doc: --shutter-ignore       ignore shutter
  type: boolean
  inputBinding:
    prefix: -s
- id: _plutignore_ignore
  doc: --plut-ignore          ignore presentation LUT shape
  type: boolean
  inputBinding:
    prefix: -p
- id: location_none
  doc: image reference without location (default)
  type: boolean
  inputBinding:
    prefix: --location-none
- id: location_network
  doc: '[a]etitle: string image located at application entity a'
  type: boolean
  inputBinding:
    prefix: --location-network
- id: location_media
  doc: '[f]ilesetID, fileset[UID]: string image located on storage medium'
  type: boolean
  inputBinding:
    prefix: --location-media
- id: dcm_file_in
  doc: DICOM image file(s) to be read
  type: string
  inputBinding:
    position: 0
- id: dcm_file_out
  doc: DICOM presentation state file to be created
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmpsmk
