class: CommandLineTool
id: dcm2pnm.cwl
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
- id: in__ignoreaspect_ignore
  doc: --ignore-aspect       ignore pixel aspect ratio when scaling
  type: boolean
  inputBinding:
    prefix: -a
- id: in__nointerpolation_interpolation
  doc: --no-interpolation    no interpolation when scaling
  type: boolean
  inputBinding:
    prefix: -i
- id: in__noscaling_scaling
  doc: --no-scaling          no scaling, ignore pixel aspect ratio (default)
  type: boolean
  inputBinding:
    prefix: -S
- id: in__nomodality_ignore
  doc: --no-modality         ignore stored modality LUT transformation
  type: boolean
  inputBinding:
    prefix: -M
- id: in__nowindowing_voi
  doc: --no-windowing        no VOI windowing (default)
  type: boolean
  inputBinding:
    prefix: -W
- id: in__nooverlays_display
  doc: --no-overlays         do not display overlays
  type: boolean
  inputBinding:
    prefix: -O
- id: in_il
  doc: --nointerlace         create non-interlaced file
  type: boolean
  inputBinding:
    prefix: -il
- id: in_mf
  doc: --meta-none           no PNG file meta information
  type: boolean
  inputBinding:
    prefix: -mf
- id: in_im
  doc: --image-info          print image details (requires verbose mode)
  type: boolean
  inputBinding:
    prefix: -im
- id: in__nooutput_create
  doc: --no-output           do not create any output (useful with -im)
  type: boolean
  inputBinding:
    prefix: -o
- id: in_dcm_file_in
  doc: DICOM input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: in_bitmap_out
  doc: 'output filename to be written (default: stdout)'
  type: string
  inputBinding:
    position: 1
- id: in_integer
  doc: 'use interpolation when scaling (1..4, def: 1)'
  type: long
  inputBinding:
    position: 0
- id: in_interpretation
  doc: +Mp   --accept-palettes     accept incorrect palette attribute tags
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcm2pnm
