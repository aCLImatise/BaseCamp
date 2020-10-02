class: CommandLineTool
id: bfconvert.cwl
inputs:
- id: in_version
  doc: ': print the library version and exit'
  type: boolean
  inputBinding:
    prefix: -version
- id: in_no_upgrade
  doc: ': do not perform the upgrade check'
  type: boolean
  inputBinding:
    prefix: -no-upgrade
- id: in_debug
  doc: ': turn on debugging output'
  type: boolean
  inputBinding:
    prefix: -debug
- id: in_stitch
  doc: ': stitch input files with similar names'
  type: boolean
  inputBinding:
    prefix: -stitch
- id: in_separate
  doc: ': split RGB images into separate channels'
  type: boolean
  inputBinding:
    prefix: -separate
- id: in_merge
  doc: ': combine separate channels into RGB image'
  type: boolean
  inputBinding:
    prefix: -merge
- id: in_expand
  doc: ': expand indexed color to RGB'
  type: boolean
  inputBinding:
    prefix: -expand
- id: in_big_tiff
  doc: ': force BigTIFF files to be written'
  type: boolean
  inputBinding:
    prefix: -bigtiff
- id: in_compression
  doc: ": specify the codec to use when saving images\n-series: specify which image\
    \ series to convert\n-map: specify file on disk to which name should be mapped\n\
    -range: specify range of planes to convert (inclusive)"
  type: boolean
  inputBinding:
    prefix: -compression
- id: in_nogroup
  doc: ": force multi-file datasets to be read as individual              files\n\
    -nolookup: disable the conversion of lookup tables"
  type: boolean
  inputBinding:
    prefix: -nogroup
- id: in_autoscale
  doc: ": automatically adjust brightness and contrast before\nconverting; this may\
    \ mean that the original pixel\nvalues are not preserved"
  type: boolean
  inputBinding:
    prefix: -autoscale
- id: in_overwrite
  doc: ': always overwrite the output file, if it already exists'
  type: File
  inputBinding:
    prefix: -overwrite
- id: in_no_overwrite
  doc: ": never overwrite the output file, if it already exists\n-crop: crop images\
    \ before converting; argument is 'x,y,w,h'"
  type: File
  inputBinding:
    prefix: -nooverwrite
- id: in_channel
  doc: ": only convert the specified channel (indexed from 0)\n-z: only convert the\
    \ specified Z section (indexed from 0)"
  type: boolean
  inputBinding:
    prefix: -channel
- id: in_time_point
  doc: ": only convert the specified timepoint (indexed from 0)\n-padded: filename\
    \ indexes for series, z, c and t will be zero padded\n-option: add the specified\
    \ key/value pair to the options list"
  type: boolean
  inputBinding:
    prefix: -timepoint
- id: in_converted_z_zero_t_zero_dot_tiff
  doc: converted_Z0_T1.tiff
  type: long
  inputBinding:
    position: 0
- id: in_converted_z_zero_t_two_dot_tiff
  doc: converted_Z1_T0.tiff
  type: long
  inputBinding:
    position: 1
- id: in_converted_z_four_t_two_dot_tiff
  doc: Each file would have a single image plane.
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_overwrite
  doc: ': always overwrite the output file, if it already exists'
  type: File
  outputBinding:
    glob: $(inputs.in_overwrite)
- id: out_no_overwrite
  doc: ": never overwrite the output file, if it already exists\n-crop: crop images\
    \ before converting; argument is 'x,y,w,h'"
  type: File
  outputBinding:
    glob: $(inputs.in_no_overwrite)
cwlVersion: v1.1
baseCommand:
- bfconvert
