class: CommandLineTool
id: dcmodify.cwl
inputs:
- id: dcm_file_in
  doc: DICOM input filename to be modified
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
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
- id: t
  doc: =   --read-xfer-auto       use TS recognition (default)
  type: boolean
  inputBinding:
    prefix: -t
- id: td
  doc: --read-xfer-detect     ignore TS specified in the file meta header
  type: boolean
  inputBinding:
    prefix: -td
- id: te
  doc: --read-xfer-little     read with explicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -te
- id: tb
  doc: --read-xfer-big        read with explicit VR big endian TS
  type: boolean
  inputBinding:
    prefix: -tb
- id: ti
  doc: --read-xfer-implicit   read with implicit VR little endian TS
  type: boolean
  inputBinding:
    prefix: -ti
- id: dc
  doc: --disable-correction   disable automatic data correction
  type: boolean
  inputBinding:
    prefix: -dc
- id: nb
  doc: --no-backup            don't backup files (DANGEROUS)
  type: boolean
  inputBinding:
    prefix: -nb
- id: i
  doc: --insert               "[t]ag-path=[v]alue" insert (or overwrite) path at position
    t with value v
  type: boolean
  inputBinding:
    prefix: -i
- id: if
  doc: --insert-from-file     "[t]ag-path=[f]ilename" insert (or overwrite) path at
    position t with value from file f
  type: boolean
  inputBinding:
    prefix: -if
- id: no_reserv_check
  doc: do not check private reservations when inserting private tags
  type: boolean
  inputBinding:
    prefix: --no-reserv-check
- id: m
  doc: --modify               "[t]ag-path=[v]alue" modify tag at position t to value
    v
  type: boolean
  inputBinding:
    prefix: -m
- id: mf
  doc: --modify-from-file     "[t]ag-path=[f]ilename" modify tag at position t to
    value from file f
  type: boolean
  inputBinding:
    prefix: -mf
- id: ma
  doc: --modify-all           "[t]ag=[v]alue" modify ALL matching tags t in file to
    value v
  type: boolean
  inputBinding:
    prefix: -ma
- id: e
  doc: --erase                "[t]ag-path" erase tag/item at position t
  type: boolean
  inputBinding:
    prefix: -e
- id: ea
  doc: --erase-all            "[t]ag" erase ALL matching tags t in file
  type: boolean
  inputBinding:
    prefix: -ea
- id: ep
  doc: --erase-private        erase ALL private data from file
  type: boolean
  inputBinding:
    prefix: -ep
- id: gen_stud_uid
  doc: generate new Study Instance UID
  type: boolean
  inputBinding:
    prefix: --gen-stud-uid
- id: gen_ser_uid
  doc: generate new Series Instance UID
  type: boolean
  inputBinding:
    prefix: --gen-ser-uid
- id: gen_inst_uid
  doc: generate new SOP Instance UID
  type: boolean
  inputBinding:
    prefix: --gen-inst-uid
- id: no_meta_uid
  doc: do not update metaheader UIDs if related UIDs in the dataset are modified
  type: boolean
  inputBinding:
    prefix: --no-meta-uid
- id: ie
  doc: --ignore-errors        continue with file, if modify error occurs
  type: boolean
  inputBinding:
    prefix: -ie
- id: ignore_missing_tags
  doc: treat 'tag not found' as success when modifying or erasing in datasets
  type: boolean
  inputBinding:
    prefix: --ignore-missing-tags
- id: ignore_un_values
  doc: do not try writing any values to elements having a VR of UN
  type: boolean
  inputBinding:
    prefix: --ignore-un-values
- id: f
  doc: --write-dataset        write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: u
  doc: --disable-new-vr       disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: g
  doc: --group-length-remove  always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: le
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -le
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmodify
