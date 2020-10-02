class: CommandLineTool
id: cooler_dump.cwl
inputs:
- id: in_table
  doc: "[chroms|bins|pixels]\nWhich table to dump. Choosing 'chroms' or\n'bins' will\
    \ cause all pixel-related options\nto be ignored. Note that for coolers stored\n\
    in symmetric-upper mode, 'pixels' only holds\nthe upper triangle values of the\
    \ matrix.\n[default: pixels]"
  type: boolean
  inputBinding:
    prefix: --table
- id: in_columns
  doc: "[,]      Restrict output to a subset of columns,\nprovided as a comma-separated\
    \ list."
  type: string
  inputBinding:
    prefix: --columns
- id: in_header
  doc: "Print the header of column names as the\nfirst row.  [default: False]"
  type: boolean
  inputBinding:
    prefix: --header
- id: in_na_rep
  doc: "Missing data representation. Default is\nempty ''."
  type: string
  inputBinding:
    prefix: --na-rep
- id: in_float_format
  doc: "Format string for floating point numbers\n(e.g. '.12g', '03.2f').  [default:\
    \ g]"
  type: double
  inputBinding:
    prefix: --float-format
- id: in_range
  doc: "The coordinates of a genomic region shown\nalong the row dimension, in UCSC-style\n\
    notation. (Example:\nchr1:10,000,000-11,000,000). If omitted, the\nentire contact\
    \ matrix is printed."
  type: long
  inputBinding:
    prefix: --range
- id: in_range_two
  doc: "The coordinates of a genomic region shown\nalong the column dimension. If\
    \ omitted, the\ncolumn range is the same as the row range."
  type: long
  inputBinding:
    prefix: --range2
- id: in_matrix
  doc: "For coolers stored in symmetric-upper mode,\nensure any empty areas of the\
    \ genomic query\nwindow are populated by generating the\nlower-triangular pixels.\
    \  [default: False]"
  type: boolean
  inputBinding:
    prefix: --matrix
- id: in_balanced
  doc: "/ --no-balance   Apply balancing weights to data. This will\nprint an extra\
    \ column called `balanced`\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --balanced
- id: in_join
  doc: "Print the full chromosome bin coordinates\ninstead of bin IDs. This will replace\
    \ the\n`bin1_id` column with `chrom1`, `start1`,\nand `end1`, and the `bin2_id`\
    \ column with\n`chrom2`, `start2` and `end2`.  [default:\nFalse]"
  type: boolean
  inputBinding:
    prefix: --join
- id: in_annotate
  doc: "[,]         Join additional columns from the bin table\nagainst the pixels.\
    \ Provide a comma\nseparated list of column names (no spaces).\nThe merged columns\
    \ will be suffixed by '1'\nand '2' accordingly."
  type: long
  inputBinding:
    prefix: --annotate
- id: in_one_based_ids
  doc: Print bin IDs as one-based rather than zero-
  type: boolean
  inputBinding:
    prefix: --one-based-ids
- id: in_chunksize
  doc: "Sets the amount of pixel data loaded from\ndisk at one time. Can affect the\
    \ performance\nof joins on high resolution datasets.\nDefault is to load as many\
    \ rows as there are\nbins."
  type: long
  inputBinding:
    prefix: --chunksize
- id: in_out
  doc: "Output text file If .gz extension is\ndetected, file is written using zlib.\n\
    Default behavior is to stream to stdout."
  type: File
  inputBinding:
    prefix: --out
- id: in_based_dot
  doc: --one-based-starts              Print start coordinates as one-based rather
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output text file If .gz extension is\ndetected, file is written using zlib.\n\
    Default behavior is to stream to stdout."
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- cooler
- dump
