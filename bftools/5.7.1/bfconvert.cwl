#!/usr/bin/env cwl-runner

baseCommand:
- bfconvert
class: CommandLineTool
cwlVersion: v1.0
id: bfconvert
inputs:
- doc: ': print the library version and exit'
  id: version
  inputBinding:
    prefix: -version
  type: boolean
- doc: ': do not perform the upgrade check'
  id: no_upgrade
  inputBinding:
    prefix: -no-upgrade
  type: boolean
- doc: ': turn on debugging output'
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
- doc: ': stitch input files with similar names'
  id: stitch
  inputBinding:
    prefix: -stitch
  type: boolean
- doc: ': split RGB images into separate channels'
  id: separate
  inputBinding:
    prefix: -separate
  type: boolean
- doc: ': combine separate channels into RGB image'
  id: merge
  inputBinding:
    prefix: -merge
  type: boolean
- doc: ': expand indexed color to RGB'
  id: expand
  inputBinding:
    prefix: -expand
  type: boolean
- doc: ': force BigTIFF files to be written'
  id: big_tiff
  inputBinding:
    prefix: -bigtiff
  type: boolean
- doc: ': specify which image series to convert'
  id: series
  inputBinding:
    prefix: -series
  type: boolean
- doc: ': specify file on disk to which name should be mapped'
  id: map
  inputBinding:
    prefix: -map
  type: boolean
- doc: ': specify range of planes to convert (inclusive)'
  id: range
  inputBinding:
    prefix: -range
  type: boolean
- doc: ': force multi-file datasets to be read as individual              files'
  id: nogroup
  inputBinding:
    prefix: -nogroup
  type: boolean
- doc: ': disable the conversion of lookup tables'
  id: no_lookup
  inputBinding:
    prefix: -nolookup
  type: boolean
- doc: ': automatically adjust brightness and contrast before converting; this may
    mean that the original pixel values are not preserved'
  id: autoscale
  inputBinding:
    prefix: -autoscale
  type: boolean
- doc: ': always overwrite the output file, if it already exists'
  id: overwrite
  inputBinding:
    prefix: -overwrite
  type: boolean
- doc: ": crop images before converting; argument is 'x,y,w,h'"
  id: crop
  inputBinding:
    prefix: -crop
  type: boolean
- doc: ': only convert the specified channel (indexed from 0)'
  id: channel
  inputBinding:
    prefix: -channel
  type: boolean
- doc: ': only convert the specified Z section (indexed from 0)'
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: ': only convert the specified timepoint (indexed from 0)'
  id: time_point
  inputBinding:
    prefix: -timepoint
  type: boolean
- doc: ': filename indexes for series, z, c and t will be zero padded'
  id: padded
  inputBinding:
    prefix: -padded
  type: boolean
- doc: ': add the specified key/value pair to the options list'
  id: option
  inputBinding:
    prefix: -option
  type: boolean
