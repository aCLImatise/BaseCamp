#!/usr/bin/env cwl-runner

baseCommand:
- showinf
class: CommandLineTool
cwlVersion: v1.0
id: showinf
inputs:
- doc: ': read metadata only, not pixels'
  id: no_pix
  inputBinding:
    prefix: -nopix
  type: boolean
- doc: ': do not output core metadata'
  id: no_core
  inputBinding:
    prefix: -nocore
  type: boolean
- doc: ': do not parse format-specific metadata table'
  id: no_meta
  inputBinding:
    prefix: -nometa
  type: boolean
- doc: ': do not filter metadata fields'
  id: no_filter
  inputBinding:
    prefix: -nofilter
  type: boolean
- doc: ': read thumbnails instead of normal pixels'
  id: thumbs
  inputBinding:
    prefix: -thumbs
  type: boolean
- doc: ': compute min/max statistics'
  id: minmax
  inputBinding:
    prefix: -minmax
  type: boolean
- doc: ': combine separate channels into RGB image'
  id: merge
  inputBinding:
    prefix: -merge
  type: boolean
- doc: ': force multi-file datasets to be read as individual files'
  id: nogroup
  inputBinding:
    prefix: -nogroup
  type: boolean
- doc: ': stitch files with similar names'
  id: stitch
  inputBinding:
    prefix: -stitch
  type: boolean
- doc: ': split RGB image into separate channels'
  id: separate
  inputBinding:
    prefix: -separate
  type: boolean
- doc: ': expand indexed color to RGB'
  id: expand
  inputBinding:
    prefix: -expand
  type: boolean
- doc: ': populate OME-XML metadata'
  id: ome_xml
  inputBinding:
    prefix: -omexml
  type: boolean
- doc: ': normalize floating point images (*)'
  id: normalize
  inputBinding:
    prefix: -normalize
  type: boolean
- doc: ': paint RGB images as quickly as possible (*)'
  id: fast
  inputBinding:
    prefix: -fast
  type: boolean
- doc: ': turn on debugging output'
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
- doc: ': specify range of planes to read (inclusive)'
  id: range
  inputBinding:
    prefix: -range
  type: boolean
- doc: ': specify which image series to read'
  id: series
  inputBinding:
    prefix: -series
  type: boolean
- doc: ': do not flatten subresolutions'
  id: no_flat
  inputBinding:
    prefix: -noflat
  type: boolean
- doc: ': used in combination with -noflat to specify which subresolution to read
    (for images with subresolutions)'
  id: resolution
  inputBinding:
    prefix: -resolution
  type: boolean
- doc: ': override the default input dimension order'
  id: swap
  inputBinding:
    prefix: -swap
  type: boolean
- doc: ': override the default output dimension order'
  id: shuffle
  inputBinding:
    prefix: -shuffle
  type: boolean
- doc: ': specify file on disk to which name should be mapped'
  id: map
  inputBinding:
    prefix: -map
  type: boolean
- doc: ': pre-read entire file into a buffer; significantly reduces the time required
    to read the images, but requires more memory'
  id: preload
  inputBinding:
    prefix: -preload
  type: boolean
- doc: ": crop images before displaying; argument is 'x,y,w,h'"
  id: crop
  inputBinding:
    prefix: -crop
  type: boolean
- doc: ': automatically adjust brightness and contrast (*)'
  id: autoscale
  inputBinding:
    prefix: -autoscale
  type: boolean
- doc: ': do not perform validation of OME-XML'
  id: no_valid
  inputBinding:
    prefix: -novalid
  type: boolean
- doc: ': do not output OME-XML StructuredAnnotation elements'
  id: no_sas
  inputBinding:
    prefix: -no-sas
  type: boolean
- doc: ': do not perform the upgrade check'
  id: no_upgrade
  inputBinding:
    prefix: -no-upgrade
  type: boolean
- doc: ': read file with a particular reader (e.g., ZeissZVI)'
  id: format
  inputBinding:
    prefix: -format
  type: boolean
- doc: ': cache the initialized reader'
  id: cache
  inputBinding:
    prefix: -cache
  type: boolean
- doc: ': use the specified directory to store the cached initialized reader. If unspecified,
    the cached reader will be stored under the same folder as the image file'
  id: cache_dir
  inputBinding:
    prefix: -cache-dir
  type: boolean
- doc: ": add the specified key/value pair to the reader's options list"
  id: option
  inputBinding:
    prefix: -option
  type: boolean
