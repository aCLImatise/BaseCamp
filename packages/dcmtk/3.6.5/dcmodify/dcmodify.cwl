class: CommandLineTool
id: dcmodify.cwl
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
  doc: =   --read-xfer-auto       use TS recognition (default)
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
- id: in_disable_correction
  doc: disable automatic data correction
  type: boolean?
  inputBinding:
    prefix: --disable-correction
- id: in_backup
  doc: backup files before modifying (default)
  type: boolean?
  inputBinding:
    prefix: --backup
- id: in_no_backup
  doc: don't backup files (DANGEROUS)
  type: boolean?
  inputBinding:
    prefix: --no-backup
- id: in_insert
  doc: "\"[t]ag-path=[v]alue\"\ninsert (or overwrite) path at position t\nwith value\
    \ v"
  type: boolean?
  inputBinding:
    prefix: --insert
- id: in_insert_from_file
  doc: "\"[t]ag-path=[f]ilename\"\ninsert (or overwrite) path at position t\nwith\
    \ value from file f"
  type: boolean?
  inputBinding:
    prefix: --insert-from-file
- id: in_no_reserv_check
  doc: "do not check private reservations\nwhen inserting private tags"
  type: boolean?
  inputBinding:
    prefix: --no-reserv-check
- id: in_modify
  doc: "\"[t]ag-path=[v]alue\"\nmodify tag at position t to value v"
  type: boolean?
  inputBinding:
    prefix: --modify
- id: in_modify_from_file
  doc: "\"[t]ag-path=[f]ilename\"\nmodify tag at position t to value from file f"
  type: boolean?
  inputBinding:
    prefix: --modify-from-file
- id: in_modify_all
  doc: "\"[t]ag=[v]alue\"\nmodify ALL matching tags t in file to value v"
  type: boolean?
  inputBinding:
    prefix: --modify-all
- id: in_erase
  doc: "\"[t]ag-path\"\nerase tag/item at position t"
  type: boolean?
  inputBinding:
    prefix: --erase
- id: in_erase_all
  doc: "\"[t]ag\"\nerase ALL matching tags t in file"
  type: boolean?
  inputBinding:
    prefix: --erase-all
- id: in_erase_private
  doc: erase ALL private data from file
  type: boolean?
  inputBinding:
    prefix: --erase-private
- id: in_gen_stud_uid
  doc: generate new Study Instance UID
  type: boolean?
  inputBinding:
    prefix: --gen-stud-uid
- id: in_gen_ser_uid
  doc: generate new Series Instance UID
  type: boolean?
  inputBinding:
    prefix: --gen-ser-uid
- id: in_gen_inst_uid
  doc: generate new SOP Instance UID
  type: boolean?
  inputBinding:
    prefix: --gen-inst-uid
- id: in_no_meta_uid
  doc: "do not update metaheader UIDs if related\nUIDs in the dataset are modified"
  type: boolean?
  inputBinding:
    prefix: --no-meta-uid
- id: in_ignore_errors
  doc: continue with file, if modify error occurs
  type: boolean?
  inputBinding:
    prefix: --ignore-errors
- id: in_ignore_missing_tags
  doc: "treat 'tag not found' as success\nwhen modifying or erasing in datasets"
  type: boolean?
  inputBinding:
    prefix: --ignore-missing-tags
- id: in_ignore_un_values
  doc: "do not try writing any values to elements\nhaving a VR of UN"
  type: boolean?
  inputBinding:
    prefix: --ignore-un-values
- id: in_write_dataset
  doc: write data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --write-dataset
- id: in_disable_new_vr
  doc: disable support for new VRs, convert to OB
  type: boolean?
  inputBinding:
    prefix: --disable-new-vr
- id: in_group_length_remove
  doc: always write without group length elements
  type: boolean?
  inputBinding:
    prefix: --group-length-remove
- id: in_length_undefined
  doc: write with undefined lengths
  type: boolean?
  inputBinding:
    prefix: --length-undefined
- id: in__paddingretain_change
  doc: "=   --padding-retain       do not change padding\n(default if not --write-dataset)"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_padding_off
  doc: no padding (implicit if --write-dataset)
  type: boolean?
  inputBinding:
    prefix: --padding-off
- id: in_dcm_file_in
  doc: DICOM input filename to be modified
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- dcmodify
