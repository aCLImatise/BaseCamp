class: CommandLineTool
id: showinf.cwl
inputs:
- id: no_pix
  doc: ': read metadata only, not pixels'
  type: boolean
  inputBinding:
    prefix: -nopix
- id: no_core
  doc: ': do not output core metadata'
  type: boolean
  inputBinding:
    prefix: -nocore
- id: no_meta
  doc: ': do not parse format-specific metadata table'
  type: boolean
  inputBinding:
    prefix: -nometa
- id: no_filter
  doc: ': do not filter metadata fields'
  type: boolean
  inputBinding:
    prefix: -nofilter
- id: thumbs
  doc: ': read thumbnails instead of normal pixels'
  type: boolean
  inputBinding:
    prefix: -thumbs
- id: minmax
  doc: ': compute min/max statistics'
  type: boolean
  inputBinding:
    prefix: -minmax
- id: merge
  doc: ': combine separate channels into RGB image'
  type: boolean
  inputBinding:
    prefix: -merge
- id: nogroup
  doc: ': force multi-file datasets to be read as individual files'
  type: boolean
  inputBinding:
    prefix: -nogroup
- id: stitch
  doc: ': stitch files with similar names'
  type: boolean
  inputBinding:
    prefix: -stitch
- id: separate
  doc: ': split RGB image into separate channels'
  type: boolean
  inputBinding:
    prefix: -separate
- id: expand
  doc: ': expand indexed color to RGB'
  type: boolean
  inputBinding:
    prefix: -expand
- id: ome_xml
  doc: ': populate OME-XML metadata'
  type: boolean
  inputBinding:
    prefix: -omexml
- id: normalize
  doc: ': normalize floating point images (*)'
  type: boolean
  inputBinding:
    prefix: -normalize
- id: fast
  doc: ': paint RGB images as quickly as possible (*)'
  type: boolean
  inputBinding:
    prefix: -fast
- id: debug
  doc: ': turn on debugging output'
  type: boolean
  inputBinding:
    prefix: -debug
- id: range
  doc: ': specify range of planes to read (inclusive)'
  type: boolean
  inputBinding:
    prefix: -range
- id: series
  doc: ': specify which image series to read'
  type: boolean
  inputBinding:
    prefix: -series
- id: no_flat
  doc: ': do not flatten subresolutions'
  type: boolean
  inputBinding:
    prefix: -noflat
- id: resolution
  doc: ': used in combination with -noflat to specify which subresolution to read
    (for images with subresolutions)'
  type: boolean
  inputBinding:
    prefix: -resolution
- id: swap
  doc: ': override the default input dimension order'
  type: boolean
  inputBinding:
    prefix: -swap
- id: shuffle
  doc: ': override the default output dimension order'
  type: boolean
  inputBinding:
    prefix: -shuffle
- id: map
  doc: ': specify file on disk to which name should be mapped'
  type: boolean
  inputBinding:
    prefix: -map
- id: preload
  doc: ': pre-read entire file into a buffer; significantly reduces the time required
    to read the images, but requires more memory'
  type: boolean
  inputBinding:
    prefix: -preload
- id: crop
  doc: ": crop images before displaying; argument is 'x,y,w,h'"
  type: boolean
  inputBinding:
    prefix: -crop
- id: autoscale
  doc: ': automatically adjust brightness and contrast (*)'
  type: boolean
  inputBinding:
    prefix: -autoscale
- id: no_valid
  doc: ': do not perform validation of OME-XML'
  type: boolean
  inputBinding:
    prefix: -novalid
- id: no_sas
  doc: ': do not output OME-XML StructuredAnnotation elements'
  type: boolean
  inputBinding:
    prefix: -no-sas
- id: no_upgrade
  doc: ': do not perform the upgrade check'
  type: boolean
  inputBinding:
    prefix: -no-upgrade
- id: format
  doc: ': read file with a particular reader (e.g., ZeissZVI)'
  type: boolean
  inputBinding:
    prefix: -format
- id: cache
  doc: ': cache the initialized reader'
  type: boolean
  inputBinding:
    prefix: -cache
- id: cache_dir
  doc: ': use the specified directory to store the cached initialized reader. If unspecified,
    the cached reader will be stored under the same folder as the image file'
  type: boolean
  inputBinding:
    prefix: -cache-dir
- id: option
  doc: ": add the specified key/value pair to the reader's options list"
  type: boolean
  inputBinding:
    prefix: -option
outputs: []
cwlVersion: v1.1
baseCommand:
- showinf
