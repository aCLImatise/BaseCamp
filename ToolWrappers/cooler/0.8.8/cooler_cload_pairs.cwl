class: CommandLineTool
id: cooler_cload_pairs.cwl
inputs:
- id: in_metadata
  doc: Path to JSON file containing user metadata.
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_assembly
  doc: Name of genome assembly (e.g. hg19, mm10)
  type: long?
  inputBinding:
    prefix: --assembly
- id: in_chrom_one
  doc: chrom1 field number (one-based)  [required]
  type: long?
  inputBinding:
    prefix: --chrom1
- id: in_pos_one
  doc: pos1 field number (one-based)  [required]
  type: long?
  inputBinding:
    prefix: --pos1
- id: in_chrom_two
  doc: chrom2 field number (one-based)  [required]
  type: long?
  inputBinding:
    prefix: --chrom2
- id: in_pos_two
  doc: pos2 field number (one-based)  [required]
  type: long?
  inputBinding:
    prefix: --pos2
- id: in_chunksize
  doc: Number of input lines to load at a time
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_zero_based
  doc: 'Positions are zero-based  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --zero-based
- id: in_comment_char
  doc: Comment character that indicates lines to
  type: string?
  inputBinding:
    prefix: --comment-char
- id: in_no_symmetric_upper
  doc: "Create a complete square matrix without\nimplicit symmetry. This allows for\
    \ distinct\nupper- and lower-triangle values"
  type: boolean?
  inputBinding:
    prefix: --no-symmetric-upper
- id: in_input_copy_status
  doc: "[unique|duplex]\nCopy status of input data when using\nsymmetric-upper storage.\
    \ | `unique`:\nIncoming data comes from a unique half of a\nsymmetric map, regardless\
    \ of how the\ncoordinates of a pair are ordered. `duplex`:\nIncoming data contains\
    \ upper- and lower-\ntriangle duplicates. All input records that\nmap to the lower\
    \ triangle will be discarded!\n| If you wish to treat lower- and upper-\ntriangle\
    \ input data as distinct, use the\n``--no-symmetric-upper`` option.   [default:\n\
    unique]"
  type: boolean?
  inputBinding:
    prefix: --input-copy-status
- id: in_field
  doc: "Specify quantitative input fields to\naggregate into value columns using the\n\
    syntax ``--field <field-name>=<field-\nnumber>``. Optionally, append ``:`` followed\n\
    by ``dtype=<dtype>`` to specify the data\ntype (e.g. float), and/or ``agg=<agg>``\
    \ to\nspecify an aggregation function different\nfrom sum (e.g. mean). Field numbers\
    \ are\n1-based. Passing 'count' as the target name\nwill override the default\
    \ behavior of\nstoring pair counts. Repeat the ``--field``\noption for each additional\
    \ field."
  type: double?
  inputBinding:
    prefix: --field
- id: in_temp_dir
  doc: "Create temporary files in a specified\ndirectory. Pass ``-`` to use the platform\n\
    default temp dir."
  type: Directory?
  inputBinding:
    prefix: --temp-dir
- id: in_no_delete_temp
  doc: Do not delete temporary files when finished.
  type: boolean?
  inputBinding:
    prefix: --no-delete-temp
- id: in_max_merge
  doc: "Maximum number of chunks to merge before\ninvoking recursive merging  [default:\
    \ 200]"
  type: long?
  inputBinding:
    prefix: --max-merge
- id: in_storage_options
  doc: "Options to modify the data filter pipeline.\nProvide as a comma-separated\
    \ list of key-\nvalue pairs of the form 'k1=v1,k2=v2,...'.\nSee http://docs.h5py.org/en/stable/high/data\n\
    set.html#filter-pipeline for more details."
  type: long?
  inputBinding:
    prefix: --storage-options
- id: in_bins
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pairs_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_cool_path
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cooler
- cload
- pairs
