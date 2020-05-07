class: CommandLineTool
id: bfconvert.cwl
inputs:
- id: version
  doc: ': print the library version and exit'
  type: boolean
  inputBinding:
    prefix: -version
- id: no_upgrade
  doc: ': do not perform the upgrade check'
  type: boolean
  inputBinding:
    prefix: -no-upgrade
- id: debug
  doc: ': turn on debugging output'
  type: boolean
  inputBinding:
    prefix: -debug
- id: stitch
  doc: ': stitch input files with similar names'
  type: boolean
  inputBinding:
    prefix: -stitch
- id: separate
  doc: ': split RGB images into separate channels'
  type: boolean
  inputBinding:
    prefix: -separate
- id: merge
  doc: ': combine separate channels into RGB image'
  type: boolean
  inputBinding:
    prefix: -merge
- id: expand
  doc: ': expand indexed color to RGB'
  type: boolean
  inputBinding:
    prefix: -expand
- id: big_tiff
  doc: ': force BigTIFF files to be written'
  type: boolean
  inputBinding:
    prefix: -bigtiff
- id: series
  doc: ': specify which image series to convert'
  type: boolean
  inputBinding:
    prefix: -series
- id: map
  doc: ': specify file on disk to which name should be mapped'
  type: boolean
  inputBinding:
    prefix: -map
- id: range
  doc: ': specify range of planes to convert (inclusive)'
  type: boolean
  inputBinding:
    prefix: -range
- id: nogroup
  doc: ': force multi-file datasets to be read as individual              files'
  type: boolean
  inputBinding:
    prefix: -nogroup
- id: no_lookup
  doc: ': disable the conversion of lookup tables'
  type: boolean
  inputBinding:
    prefix: -nolookup
- id: autoscale
  doc: ': automatically adjust brightness and contrast before converting; this may
    mean that the original pixel values are not preserved'
  type: boolean
  inputBinding:
    prefix: -autoscale
- id: overwrite
  doc: ': always overwrite the output file, if it already exists'
  type: boolean
  inputBinding:
    prefix: -overwrite
- id: crop
  doc: ": crop images before converting; argument is 'x,y,w,h'"
  type: boolean
  inputBinding:
    prefix: -crop
- id: channel
  doc: ': only convert the specified channel (indexed from 0)'
  type: boolean
  inputBinding:
    prefix: -channel
- id: z
  doc: ': only convert the specified Z section (indexed from 0)'
  type: boolean
  inputBinding:
    prefix: -z
- id: time_point
  doc: ': only convert the specified timepoint (indexed from 0)'
  type: boolean
  inputBinding:
    prefix: -timepoint
- id: padded
  doc: ': filename indexes for series, z, c and t will be zero padded'
  type: boolean
  inputBinding:
    prefix: -padded
- id: option
  doc: ': add the specified key/value pair to the options list'
  type: boolean
  inputBinding:
    prefix: -option
outputs: []
cwlVersion: v1.1
baseCommand:
- bfconvert
