class: CommandLineTool
id: dcmgpdir.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in__quiet_quiet
  doc: --quiet                  quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose                verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug                  debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level              [l]evel: string constant\n(fatal, error, warn, info,\
    \ debug, trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config             [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in__keepfilenames_expect
  doc: --keep-filenames         expect filenames to be in DICOM format (def.)
  type: boolean
  inputBinding:
    prefix: -m
- id: in__norecurse_recurse
  doc: --no-recurse             do not recurse within directories (default)
  type: boolean
  inputBinding:
    prefix: -r
- id: in__noconsistencycheck_check
  doc: --no-consistency-check   do not check files for consistency
  type: boolean
  inputBinding:
    prefix: -W
- id: in__abort_first
  doc: --abort-inconsist-file   abort on first inconsistent file
  type: boolean
  inputBinding:
    prefix: -a
- id: in__strict_exit
  doc: "--strict                 exit with error if DICOMDIR type 1 attributes\nare\
    \ missing in DICOM file (default)"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_no_xfer_check
  doc: "do not reject images with non-standard\ntransfer syntax (just warn)"
  type: boolean
  inputBinding:
    prefix: --no-xfer-check
- id: in__replace_replace
  doc: --replace                replace existing DICOMDIR (default)
  type: boolean
  inputBinding:
    prefix: -A
- id: in__discard_write
  doc: --discard                do not write out DICOMDIR
  type: boolean
  inputBinding:
    prefix: -w
- id: in_create_backup
  doc: create a backup of existing DICOMDIR (def.)
  type: boolean
  inputBinding:
    prefix: --create-backup
- id: in_nb
  doc: --no-backup              do not create a backup of existing DICOMDIR
  type: boolean
  inputBinding:
    prefix: -nb
- id: in__disablenewvr_disable
  doc: --disable-new-vr         disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: in__grouplengthremove_write
  doc: --group-length-remove    write without group length elements (default)
  type: boolean
  inputBinding:
    prefix: -g
- id: in__lengthundefined_write
  doc: --length-undefined       write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
- id: in_dcm_file_in
  doc: ref. DICOM file (or directory to be scanned)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmgpdir
