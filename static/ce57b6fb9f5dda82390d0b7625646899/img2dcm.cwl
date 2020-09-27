class: CommandLineTool
id: img2dcm.cwl
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
- id: in__inputformat_nput
  doc: "--input-format         [i]nput file format: string\nsupported formats: JPEG\
    \ (default), BMP"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_df
  doc: "--dataset-from         [f]ilename: string\nuse dataset from DICOM file f"
  type: boolean
  inputBinding:
    prefix: -df
- id: in_study_from
  doc: "[f]ilename: string\nread patient/study from DICOM file f"
  type: boolean
  inputBinding:
    prefix: --study-from
- id: in_series_from
  doc: "[f]ilename: string\nread patient/study/series from DICOM file f"
  type: boolean
  inputBinding:
    prefix: --series-from
- id: in_ii
  doc: --instance-inc         increase instance number read from DICOM file
  type: boolean
  inputBinding:
    prefix: -ii
- id: in_dp
  doc: --disable-progr        disable support for progressive JPEG
  type: boolean
  inputBinding:
    prefix: -dp
- id: in_de
  doc: --disable-ext          disable support for extended sequential JPEG
  type: boolean
  inputBinding:
    prefix: -de
- id: in_jf
  doc: --insist-on-jfif       insist on JFIF header
  type: boolean
  inputBinding:
    prefix: -jf
- id: in_ka
  doc: --keep-appn            keep APPn sections (except JFIF)
  type: boolean
  inputBinding:
    prefix: -ka
- id: in_do_checks
  doc: enable attribute validity checking (default)
  type: boolean
  inputBinding:
    prefix: --do-checks
- id: in_no_checks
  doc: disable attribute validity checking
  type: boolean
  inputBinding:
    prefix: --no-checks
- id: in_i_two
  doc: "--no-type2-insert      do not insert missing type 2 attributes\n(only with\
    \ --do-checks)"
  type: boolean
  inputBinding:
    prefix: -i2
- id: in_i_one
  doc: "--no-type1-invent      do not invent missing type 1 attributes\n(only with\
    \ --do-checks)"
  type: boolean
  inputBinding:
    prefix: -i1
- id: in_lone
  doc: --no-latin1            keep 7-bit ASCII as standard character set
  type: boolean
  inputBinding:
    prefix: -l1
- id: in__key_ey
  doc: "--key                  [k]ey: gggg,eeee=\"str\", path or dict. name=\"str\"\
    \nadd further attribute"
  type: boolean
  inputBinding:
    prefix: -k
- id: in_sc
  doc: --sec-capture          write Secondary Capture SOP class (default)
  type: boolean
  inputBinding:
    prefix: -sc
- id: in_new_sc
  doc: write new Secondary Capture SOP classes
  type: boolean
  inputBinding:
    prefix: --new-sc
- id: in_vl_photo
  doc: write Visible Light Photographic SOP class
  type: boolean
  inputBinding:
    prefix: --vl-photo
- id: in__writedataset_write
  doc: --write-dataset        write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: in__grouplengthremove_always
  doc: --group-length-remove  always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: in__lengthundefined_write
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
- id: in__paddingoff_padding
  doc: --padding-off          no padding (implicit if --write-dataset)
  type: boolean
  inputBinding:
    prefix: -p
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
cwlVersion: v1.1
baseCommand:
- img2dcm
