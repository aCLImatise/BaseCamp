class: CommandLineTool
id: img2dcm.cwl
inputs:
- id: img_file_in
  doc: image input filename
  type: string
  inputBinding:
    position: 0
- id: dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 1
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
- id: i
  doc: '--input-format         [i]nput file format: string supported formats: JPEG
    (default), BMP'
  type: boolean
  inputBinding:
    prefix: -i
- id: df
  doc: '--dataset-from         [f]ilename: string use dataset from DICOM file f'
  type: boolean
  inputBinding:
    prefix: -df
- id: study_from
  doc: '[f]ilename: string read patient/study from DICOM file f'
  type: boolean
  inputBinding:
    prefix: --study-from
- id: series_from
  doc: '[f]ilename: string read patient/study/series from DICOM file f'
  type: boolean
  inputBinding:
    prefix: --series-from
- id: ii
  doc: --instance-inc         increase instance number read from DICOM file
  type: boolean
  inputBinding:
    prefix: -ii
- id: dp
  doc: --disable-progr        disable support for progressive JPEG
  type: boolean
  inputBinding:
    prefix: -dp
- id: de
  doc: --disable-ext          disable support for extended sequential JPEG
  type: boolean
  inputBinding:
    prefix: -de
- id: jf
  doc: --insist-on-jfif       insist on JFIF header
  type: boolean
  inputBinding:
    prefix: -jf
- id: ka
  doc: --keep-appn            keep APPn sections (except JFIF)
  type: boolean
  inputBinding:
    prefix: -ka
- id: do_checks
  doc: enable attribute validity checking (default)
  type: boolean
  inputBinding:
    prefix: --do-checks
- id: no_checks
  doc: disable attribute validity checking
  type: boolean
  inputBinding:
    prefix: --no-checks
- id: i1
  doc: --no-type1-invent      do not invent missing type 1 attributes (only with --do-checks)
  type: boolean
  inputBinding:
    prefix: -i1
- id: l1
  doc: --no-latin1            keep 7-bit ASCII as standard character set
  type: boolean
  inputBinding:
    prefix: -l1
- id: k
  doc: '--key                  [k]ey: gggg,eeee="str", path or dict. name="str" add
    further attribute'
  type: boolean
  inputBinding:
    prefix: -k
- id: sc
  doc: --sec-capture          write Secondary Capture SOP class (default)
  type: boolean
  inputBinding:
    prefix: -sc
- id: new_sc
  doc: write new Secondary Capture SOP classes
  type: boolean
  inputBinding:
    prefix: --new-sc
- id: vl_photo
  doc: write Visible Light Photographic SOP class
  type: boolean
  inputBinding:
    prefix: --vl-photo
- id: f
  doc: --write-dataset        write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: g
  doc: --group-length-remove  always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- img2dcm
