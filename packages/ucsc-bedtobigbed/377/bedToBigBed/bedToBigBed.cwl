class: CommandLineTool
id: bedToBigBed.cwl
inputs:
- id: in_type
  doc: "[+[P]] :\nN is between 3 and 15,\noptional (+) if extra \"bedPlus\" fields,\n\
    optional P specifies the number of extra fields. Not required, but preferred.\n\
    Examples: -type=bed6 or -type=bed6+ or -type=bed6+3\n(see http://genome.ucsc.edu/FAQ/FAQformat.html#format1)"
  type: long
  inputBinding:
    prefix: -type
- id: in_as
  doc: "- If you have non-standard \"bedPlus\" fields, it's great to put a definition\n\
    of each field in a row in AutoSql format here."
  type: string
  inputBinding:
    prefix: -as
- id: in_block_size
  doc: '- Number of items to bundle in r-tree.  Default 256'
  type: long
  inputBinding:
    prefix: -blockSize
- id: in_items_per_slot
  doc: '- Number of data points bundled at lowest level. Default 512'
  type: long
  inputBinding:
    prefix: -itemsPerSlot
- id: in_unc
  doc: '- If set, do not use compression.'
  type: boolean
  inputBinding:
    prefix: -unc
- id: in_tab
  doc: "- If set, expect fields to be tab separated, normally\nexpects white space\
    \ separator."
  type: boolean
  inputBinding:
    prefix: -tab
- id: in_extra_index
  doc: "- If set, make an index on each field in a comma separated list\nextraIndex=name\
    \ and extraIndex=name,id are commonly used."
  type: string
  inputBinding:
    prefix: -extraIndex
- id: in_sizes_is_two_bit
  doc: -- If set, the chrom.sizes file is assumed to be a 2bit file.
  type: boolean
  inputBinding:
    prefix: -sizesIs2Bit
- id: in_udc_dir
  doc: =/path/to/udcCacheDir  -- sets the UDC cache dir for caching of remote files.
  type: boolean
  inputBinding:
    prefix: -udcDir
- id: in_in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chrom_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedToBigBed
