class: CommandLineTool
id: showinf.cwl
inputs:
- id: in_version
  doc: ": print the library version and exit\nfile: the image file to read"
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_no_pix
  doc: ': read metadata only, not pixels'
  type: boolean?
  inputBinding:
    prefix: -nopix
- id: in_no_core
  doc: ': do not output core metadata'
  type: boolean?
  inputBinding:
    prefix: -nocore
- id: in_no_meta
  doc: ': do not parse format-specific metadata table'
  type: boolean?
  inputBinding:
    prefix: -nometa
- id: in_no_filter
  doc: ': do not filter metadata fields'
  type: boolean?
  inputBinding:
    prefix: -nofilter
- id: in_thumbs
  doc: ': read thumbnails instead of normal pixels'
  type: boolean?
  inputBinding:
    prefix: -thumbs
- id: in_minmax
  doc: ': compute min/max statistics'
  type: boolean?
  inputBinding:
    prefix: -minmax
- id: in_merge
  doc: ': combine separate channels into RGB image'
  type: boolean?
  inputBinding:
    prefix: -merge
- id: in_nogroup
  doc: ': force multi-file datasets to be read as individual files'
  type: boolean?
  inputBinding:
    prefix: -nogroup
- id: in_stitch
  doc: ': stitch files with similar names'
  type: boolean?
  inputBinding:
    prefix: -stitch
- id: in_separate
  doc: ': split RGB image into separate channels'
  type: boolean?
  inputBinding:
    prefix: -separate
- id: in_expand
  doc: ': expand indexed color to RGB'
  type: boolean?
  inputBinding:
    prefix: -expand
- id: in_ome_xml
  doc: ': populate OME-XML metadata'
  type: boolean?
  inputBinding:
    prefix: -omexml
- id: in_normalize
  doc: ': normalize floating point images (*)'
  type: boolean?
  inputBinding:
    prefix: -normalize
- id: in_fast
  doc: ': paint RGB images as quickly as possible (*)'
  type: boolean?
  inputBinding:
    prefix: -fast
- id: in_debug
  doc: ': turn on debugging output'
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_range
  doc: ': specify range of planes to read (inclusive)'
  type: boolean?
  inputBinding:
    prefix: -range
- id: in_series
  doc: ': specify which image series to read'
  type: boolean?
  inputBinding:
    prefix: -series
- id: in_no_flat
  doc: ': do not flatten subresolutions'
  type: boolean?
  inputBinding:
    prefix: -noflat
- id: in_resolution
  doc: ": used in combination with -noflat to specify which\nsubresolution to read\
    \ (for images with subresolutions)"
  type: boolean?
  inputBinding:
    prefix: -resolution
- id: in_swap
  doc: ': override the default input dimension order'
  type: boolean?
  inputBinding:
    prefix: -swap
- id: in_shuffle
  doc: ': override the default output dimension order'
  type: boolean?
  inputBinding:
    prefix: -shuffle
- id: in_map
  doc: ': specify file on disk to which name should be mapped'
  type: boolean?
  inputBinding:
    prefix: -map
- id: in_preload
  doc: ": pre-read entire file into a buffer; significantly\nreduces the time required\
    \ to read the images, but\nrequires more memory"
  type: boolean?
  inputBinding:
    prefix: -preload
- id: in_crop
  doc: ": crop images before displaying; argument is 'x,y,w,h'"
  type: boolean?
  inputBinding:
    prefix: -crop
- id: in_autoscale
  doc: ': automatically adjust brightness and contrast (*)'
  type: boolean?
  inputBinding:
    prefix: -autoscale
- id: in_no_valid
  doc: ': do not perform validation of OME-XML'
  type: boolean?
  inputBinding:
    prefix: -novalid
- id: in_ome_xml_only
  doc: ": only output the generated OME-XML\n-no-sas: do not output OME-XML StructuredAnnotation\
    \ elements"
  type: boolean?
  inputBinding:
    prefix: -omexml-only
- id: in_no_upgrade
  doc: ": do not perform the upgrade check\n-format: read file with a particular reader\
    \ (e.g., ZeissZVI)\n-cache: cache the initialized reader"
  type: boolean?
  inputBinding:
    prefix: -no-upgrade
- id: in_cache_dir
  doc: ": use the specified directory to store the cached\ninitialized reader. If\
    \ unspecified, the cached reader\nwill be stored under the same folder as the\
    \ image file"
  type: boolean?
  inputBinding:
    prefix: -cache-dir
- id: in_option
  doc: ": add the specified key/value pair to the reader's options list"
  type: boolean?
  inputBinding:
    prefix: -option
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- showinf
