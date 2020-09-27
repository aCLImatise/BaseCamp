class: CommandLineTool
id: dcmodify.cwl
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
- id: in_dc
  doc: --disable-correction   disable automatic data correction
  type: boolean
  inputBinding:
    prefix: -dc
- id: in_backup
  doc: backup files before modifying (default)
  type: boolean
  inputBinding:
    prefix: --backup
- id: in_nb
  doc: --no-backup            don't backup files (DANGEROUS)
  type: boolean
  inputBinding:
    prefix: -nb
- id: in__insert_insert
  doc: "--insert               \"[t]ag-path=[v]alue\"\ninsert (or overwrite) path\
    \ at position t\nwith value v"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_if
  doc: "--insert-from-file     \"[t]ag-path=[f]ilename\"\ninsert (or overwrite) path\
    \ at position t\nwith value from file f"
  type: boolean
  inputBinding:
    prefix: -if
- id: in_no_reserv_check
  doc: "do not check private reservations\nwhen inserting private tags"
  type: boolean
  inputBinding:
    prefix: --no-reserv-check
- id: in__modify_tag
  doc: "--modify               \"[t]ag-path=[v]alue\"\nmodify tag at position t to\
    \ value v"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_mf
  doc: "--modify-from-file     \"[t]ag-path=[f]ilename\"\nmodify tag at position t\
    \ to value from file f"
  type: boolean
  inputBinding:
    prefix: -mf
- id: in_ma
  doc: "--modify-all           \"[t]ag=[v]alue\"\nmodify ALL matching tags t in file\
    \ to value v"
  type: boolean
  inputBinding:
    prefix: -ma
- id: in__erase_erase
  doc: "--erase                \"[t]ag-path\"\nerase tag/item at position t"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_ea
  doc: "--erase-all            \"[t]ag\"\nerase ALL matching tags t in file"
  type: boolean
  inputBinding:
    prefix: -ea
- id: in_ep
  doc: --erase-private        erase ALL private data from file
  type: boolean
  inputBinding:
    prefix: -ep
- id: in_gen_stud_uid
  doc: generate new Study Instance UID
  type: boolean
  inputBinding:
    prefix: --gen-stud-uid
- id: in_gen_ser_uid
  doc: generate new Series Instance UID
  type: boolean
  inputBinding:
    prefix: --gen-ser-uid
- id: in_gen_inst_uid
  doc: generate new SOP Instance UID
  type: boolean
  inputBinding:
    prefix: --gen-inst-uid
- id: in_no_meta_uid
  doc: "do not update metaheader UIDs if related\nUIDs in the dataset are modified"
  type: boolean
  inputBinding:
    prefix: --no-meta-uid
- id: in_ie
  doc: --ignore-errors        continue with file, if modify error occurs
  type: boolean
  inputBinding:
    prefix: -ie
- id: in_ignore_missing_tags
  doc: "treat 'tag not found' as success\nwhen modifying or erasing in datasets"
  type: boolean
  inputBinding:
    prefix: --ignore-missing-tags
- id: in_ignore_un_values
  doc: "do not try writing any values to elements\nhaving a VR of UN"
  type: boolean
  inputBinding:
    prefix: --ignore-un-values
- id: in__writedataset_write
  doc: --write-dataset        write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: in__disablenewvr_disable
  doc: --disable-new-vr       disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: in__grouplengthremove_always
  doc: --group-length-remove  always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: in_le
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -le
- id: in_dcm_file_in
  doc: DICOM input filename to be modified
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmodify
