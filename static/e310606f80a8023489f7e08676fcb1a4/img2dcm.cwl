class: CommandLineTool
id: img2dcm.cwl
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
- id: in_input_format
  doc: "[i]nput file format: string\nsupported formats: JPEG (default), BMP"
  type: boolean?
  inputBinding:
    prefix: --input-format
- id: in_dataset_from
  doc: "[f]ilename: string\nuse dataset from DICOM file f"
  type: boolean?
  inputBinding:
    prefix: --dataset-from
- id: in_study_from
  doc: "[f]ilename: string\nread patient/study from DICOM file f"
  type: boolean?
  inputBinding:
    prefix: --study-from
- id: in_series_from
  doc: "[f]ilename: string\nread patient/study/series from DICOM file f"
  type: boolean?
  inputBinding:
    prefix: --series-from
- id: in_instance_inc
  doc: increase instance number read from DICOM file
  type: boolean?
  inputBinding:
    prefix: --instance-inc
- id: in_disable_progr
  doc: disable support for progressive JPEG
  type: boolean?
  inputBinding:
    prefix: --disable-progr
- id: in_disable_ext
  doc: disable support for extended sequential JPEG
  type: boolean?
  inputBinding:
    prefix: --disable-ext
- id: in_insist_on_jfif
  doc: insist on JFIF header
  type: boolean?
  inputBinding:
    prefix: --insist-on-jfif
- id: in_keep_appn
  doc: keep APPn sections (except JFIF)
  type: boolean?
  inputBinding:
    prefix: --keep-appn
- id: in_do_checks
  doc: enable attribute validity checking (default)
  type: boolean?
  inputBinding:
    prefix: --do-checks
- id: in_no_checks
  doc: disable attribute validity checking
  type: boolean?
  inputBinding:
    prefix: --no-checks
- id: in_no_type_two_insert
  doc: "do not insert missing type 2 attributes\n(only with --do-checks)"
  type: boolean?
  inputBinding:
    prefix: --no-type2-insert
- id: in_no_type_one_invent
  doc: "do not invent missing type 1 attributes\n(only with --do-checks)"
  type: boolean?
  inputBinding:
    prefix: --no-type1-invent
- id: in_no_latin_one
  doc: keep 7-bit ASCII as standard character set
  type: boolean?
  inputBinding:
    prefix: --no-latin1
- id: in_key
  doc: "[k]ey: gggg,eeee=\"str\", path or dict. name=\"str\"\nadd further attribute"
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_sec_capture
  doc: write Secondary Capture SOP class (default)
  type: boolean?
  inputBinding:
    prefix: --sec-capture
- id: in_new_sc
  doc: write new Secondary Capture SOP classes
  type: boolean?
  inputBinding:
    prefix: --new-sc
- id: in_vl_photo
  doc: write Visible Light Photographic SOP class
  type: boolean?
  inputBinding:
    prefix: --vl-photo
- id: in_write_dataset
  doc: write data set without file meta information
  type: boolean?
  inputBinding:
    prefix: --write-dataset
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
- id: in_padding_off
  doc: no padding (implicit if --write-dataset)
  type: boolean?
  inputBinding:
    prefix: --padding-off
- id: in_img_file_in
  doc: image input filename
  type: string
  inputBinding:
    position: 0
- id: in_dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- img2dcm
