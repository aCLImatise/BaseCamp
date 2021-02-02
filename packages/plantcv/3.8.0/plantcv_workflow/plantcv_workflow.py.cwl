class: CommandLineTool
id: plantcv_workflow.py.cwl
inputs:
- id: in_dir
  doc: "Input directory containing images or snapshots.\n(default: None)"
  type: Directory
  inputBinding:
    prefix: --dir
- id: in_adaptor
  doc: "Image metadata reader adaptor. PhenoFront metadata is\nstored in a CSV file\
    \ and the image file name. For the\nfilename option, all metadata is stored in\
    \ the image\nfile name. Current adaptors: phenofront, filename\n(default: phenofront)"
  type: File
  inputBinding:
    prefix: --adaptor
- id: in_workflow
  doc: 'Workflow script file. (default: None)'
  type: File
  inputBinding:
    prefix: --workflow
- id: in_json
  doc: 'Output database file name. (default: None)'
  type: File
  inputBinding:
    prefix: --json
- id: in_meta
  doc: "Image filename metadata structure. Comma-separated\nlist of valid metadata\
    \ terms. Valid metadata fields\nare: camera, imgtype, zoom, exposure, gain, frame,\n\
    lifter, timestamp, id, plantbarcode, treatment,\ncartag, measurementlabel, other\
    \ (default: None)"
  type: File
  inputBinding:
    prefix: --meta
- id: in_outdir
  doc: "Output directory for images. Not required by all\nworkflows. (default: .)"
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_cpu
  doc: 'Number of CPU processes to use. (default: 1)'
  type: long
  inputBinding:
    prefix: --cpu
- id: in_create
  doc: "will overwrite an existing databaseWarning: activating\nthis option will delete\
    \ an existing database!\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --create
- id: in_dates
  doc: "Date range. Format: YYYY-MM-DD-hh-mm-ss_YYYY-MM-DD-hh-\nmm-ss. If the second\
    \ date is excluded then the current\ndate is assumed. (default: None)"
  type: string
  inputBinding:
    prefix: --dates
- id: in_type
  doc: 'Image format type (extension). (default: png)'
  type: string
  inputBinding:
    prefix: --type
- id: in_delimiter
  doc: "Image file name metadata delimiter\ncharacter.Alternatively, a regular expression\
    \ for\nparsing filename metadata. (default: _)"
  type: File
  inputBinding:
    prefix: --delimiter
- id: in_match
  doc: "Restrict analysis to images with metadata matching\ninput criteria. Input\
    \ a metadata:value comma-separated\nlist. This is an exact match search. E.g.\n\
    imgtype:VIS,camera:SV,zoom:z500 (default: None)"
  type: long
  inputBinding:
    prefix: --match
- id: in_co_process
  doc: "Coprocess the specified imgtype with the imgtype\nspecified in --match (e.g.\
    \ coprocess NIR images with\nVIS). (default: None)"
  type: string
  inputBinding:
    prefix: --coprocess
- id: in_timestamp_format
  doc: "a date format code compatible with strptime C library,\ne.g. \"%Y-%m-%d %H_%M_%S\"\
    , except \"%\" symbols must be\nescaped on Windows with \"%\" e.g. \"%%Y-%%m-%%d\n\
    %%H_%%M_%%S\"default format code is \"%Y-%m-%d\n%H:%M:%S.%f\" (default: %Y-%m-%d\
    \ %H:%M:%S.%f)"
  type: string
  inputBinding:
    prefix: --timestampformat
- id: in_write_img
  doc: 'Include analysis images in output. (default: False)'
  type: boolean
  inputBinding:
    prefix: --writeimg
- id: in_other_args
  doc: "Other arguments to pass to the workflow script.\n(default: None)\n"
  type: string
  inputBinding:
    prefix: --other_args
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_json
  doc: 'Output database file name. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_json)
- id: out_outdir
  doc: "Output directory for images. Not required by all\nworkflows. (default: .)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- plantcv-workflow.py
