class: CommandLineTool
id: dsrdump.cwl
inputs:
- id: dsr_file_in
  doc: DICOM SR input filename to be dumped
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet                 quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose               verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug                 debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level             [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config            [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: f
  doc: --read-dataset          read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: t
  doc: =   --read-xfer-auto        use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: td
  doc: --read-xfer-detect      ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: -td
- id: te
  doc: --read-xfer-little      read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -te
- id: tb
  doc: --read-xfer-big         read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: -tb
- id: ti
  doc: --read-xfer-implicit    read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -ti
- id: ip
  doc: --processing-details    show currently processed content item
  type: boolean
  inputBinding:
    prefix: -Ip
- id: er
  doc: --unknown-relationship  accept unknown/missing relationship type
  type: boolean
  inputBinding:
    prefix: -Er
- id: ev
  doc: --invalid-item-value    accept invalid content item value (e.g. violation of
    VR or VM definition)
  type: boolean
  inputBinding:
    prefix: -Ev
- id: ec
  doc: --ignore-constraints    ignore relationship content constraints
  type: boolean
  inputBinding:
    prefix: -Ec
- id: ee
  doc: --ignore-item-errors    do not abort on content item errors, just warn (e.g.
    missing value type specific attributes)
  type: boolean
  inputBinding:
    prefix: -Ee
- id: ei
  doc: --skip-invalid-items    skip invalid content items (incl. sub-tree)
  type: boolean
  inputBinding:
    prefix: -Ei
- id: dv
  doc: --disable-vr-checker    disable check for VR-conformant string values
  type: boolean
  inputBinding:
    prefix: -Dv
- id: pn
  doc: --indent-nested-items   indent nested items by spaces (default)
  type: boolean
  inputBinding:
    prefix: -Pn
- id: pe
  doc: --no-enhanced-mode      do not indicate enhanced mode (default)
  type: boolean
  inputBinding:
    prefix: -Pe
- id: c
  doc: --no-color              do not use any ANSI escape codes (default)
  type: boolean
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- dsrdump
