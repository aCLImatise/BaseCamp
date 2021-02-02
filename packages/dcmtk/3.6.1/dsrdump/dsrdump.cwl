class: CommandLineTool
id: dsrdump.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet                 quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose               verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug                 debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level             [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config            [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__readdataset_read
  doc: --read-dataset          read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: in__readxferauto_use
  doc: =   --read-xfer-auto        use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: in_td
  doc: --read-xfer-detect      ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: -td
- id: in_te
  doc: --read-xfer-little      read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -te
- id: in_tb
  doc: --read-xfer-big         read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: -tb
- id: in_ti
  doc: --read-xfer-implicit    read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -ti
- id: in_ip
  doc: --processing-details    show currently processed content item
  type: boolean
  inputBinding:
    prefix: -Ip
- id: in_er
  doc: --unknown-relationship  accept unknown/missing relationship type
  type: boolean
  inputBinding:
    prefix: -Er
- id: in_ev
  doc: "--invalid-item-value    accept invalid content item value\n(e.g. violation\
    \ of VR or VM definition)"
  type: boolean
  inputBinding:
    prefix: -Ev
- id: in_ec
  doc: --ignore-constraints    ignore relationship content constraints
  type: boolean
  inputBinding:
    prefix: -Ec
- id: in_ee
  doc: "--ignore-item-errors    do not abort on content item errors, just warn\n(e.g.\
    \ missing value type specific attributes)"
  type: boolean
  inputBinding:
    prefix: -Ee
- id: in_ei
  doc: --skip-invalid-items    skip invalid content items (incl. sub-tree)
  type: boolean
  inputBinding:
    prefix: -Ei
- id: in_dv
  doc: --disable-vr-checker    disable check for VR-conformant string values
  type: boolean
  inputBinding:
    prefix: -Dv
- id: in_ph
  doc: --no-document-header    do not print general document information
  type: boolean
  inputBinding:
    prefix: -Ph
- id: in_pn
  doc: --indent-nested-items   indent nested items by spaces (default)
  type: boolean
  inputBinding:
    prefix: -Pn
- id: in_pl
  doc: --shorten-long-values   print long item values shortened (default)
  type: boolean
  inputBinding:
    prefix: -Pl
- id: in_ps
  doc: "--print-sopclass-short  print short SOP class name of referenced\nimage objects,\
    \ e.g. \"CT image\" (default)"
  type: boolean
  inputBinding:
    prefix: -Ps
- id: in_pi
  doc: --no-invalid-codes      print text "invalid code" instead (default)
  type: boolean
  inputBinding:
    prefix: -Pi
- id: in_pe
  doc: --no-enhanced-mode      do not indicate enhanced mode (default)
  type: boolean
  inputBinding:
    prefix: -Pe
- id: in__nocolor_use
  doc: --no-color              do not use any ANSI escape codes (default)
  type: boolean
  inputBinding:
    prefix: -C
- id: in_dsr_file_in
  doc: DICOM SR input filename to be dumped
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dsrdump
