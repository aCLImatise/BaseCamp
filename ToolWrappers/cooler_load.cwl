class: CommandLineTool
id: cooler_load.cwl
inputs:
- id: in_format
  doc: "[coo|bg2]          'coo' refers to a tab-delimited sparse\ntriplet file (bin1,\
    \ bin2, count). 'bg2'\nrefers to a 2D bedGraph-like file (chrom1,\nstart1, end1,\
    \ chrom2, start2, end2, count).\n[required]"
  type: boolean
  inputBinding:
    prefix: --format
- id: in_metadata
  doc: Path to JSON file containing user metadata.
  type: File
  inputBinding:
    prefix: --metadata
- id: in_assembly
  doc: Name of genome assembly (e.g. hg19, mm10)
  type: long
  inputBinding:
    prefix: --assembly
- id: in_field
  doc: "Add supplemental value fields or override\ndefault field numbers for the specified\n\
    format. Specify quantitative input fields to\naggregate into value columns using\
    \ the\nsyntax ``--field <field-name>=<field-\nnumber>``. Optionally, append ``:``\
    \ followed\nby ``dtype=<dtype>`` to specify the data\ntype (e.g. float). Field\
    \ numbers are\n1-based. Repeat the ``--field`` option for\neach additional field."
  type: double
  inputBinding:
    prefix: --field
- id: in_chunksize
  doc: "Size (in number of lines/records) of data\nchunks to read and process from\
    \ the input\nfile at a time. These chunks will be saved\nas temporary partial\
    \ Coolers and merged at\nthe end. Also specifies the size of the\nbuffer during\
    \ the merge step."
  type: long
  inputBinding:
    prefix: --chunksize
- id: in_count_as_float
  doc: "Store the 'count' column as floating point\nvalues instead of as integers.\
    \ Can also be\nspecified using the `--field` option."
  type: boolean
  inputBinding:
    prefix: --count-as-float
- id: in_one_based
  doc: "Pass this flag if the bin IDs listed in a\nCOO file are one-based instead\
    \ of zero-\nbased."
  type: boolean
  inputBinding:
    prefix: --one-based
- id: in_comment_char
  doc: Comment character that indicates lines to
  type: string
  inputBinding:
    prefix: --comment-char
- id: in_no_symmetric_upper
  doc: "Create a complete square matrix without\nimplicit symmetry. This allows for\
    \ distinct\nupper- and lower-triangle values"
  type: boolean
  inputBinding:
    prefix: --no-symmetric-upper
- id: in_input_copy_status
  doc: "[unique|duplex]\nCopy status of input data when using\nsymmetric-upper storage.\
    \ | `unique`:\nIncoming data comes from a unique half of a\nsymmetric matrix,\
    \ regardless of how element\ncoordinates are ordered. Execution will be\naborted\
    \ if duplicates are detected.\n`duplex`: Incoming data contains upper- and\nlower-triangle\
    \ duplicates. All lower-\ntriangle input elements will be discarded! |\nIf you\
    \ wish to treat lower- and upper-\ntriangle input data as distinct, use the\n\
    ``--no-symmetric-upper`` option instead.\n[default: unique]"
  type: boolean
  inputBinding:
    prefix: --input-copy-status
- id: in_storage_options
  doc: "Options to modify the data filter pipeline.\nProvide as a comma-separated\
    \ list of key-\nvalue pairs of the form 'k1=v1,k2=v2,...'.\nSee http://docs.h5py.org/en/stable/high/data\n\
    set.html#filter-pipeline for more details."
  type: long
  inputBinding:
    prefix: --storage-options
- id: in_compressed_dot
  doc: 'COO: COO-rdinate sparse matrix format (a.k.a. ijv triple). 3 columns:'
  type: string
  inputBinding:
    position: 0
- id: in_ignore_dot
  doc: '[default: #]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cooler
- load
