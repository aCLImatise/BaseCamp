class: CommandLineTool
id: lastz_D.cwl
inputs:
- id: no_mirror
  doc: don't report mirror-image alignments when using --self (default is to skip
    processing them, but recreate them in the output)
  type: boolean
  inputBinding:
    prefix: --nomirror
- id: allocate
  doc: :traceback=<bytes>  space for trace-back information (default is 80.0M)
  type: boolean
  inputBinding:
    prefix: --allocate
- id: masking
  doc: mask any position in target hit this many times zero indicates no masking (default
    is no masking)
  type: string
  inputBinding:
    prefix: --masking
- id: identity
  doc: '[..<max>] filter alignments by percent identity 0<=min<=max<=100;  blocks
    (or HSPs) outside min..max are discarded (default is no identity filtering)'
  type: long
  inputBinding:
    prefix: --identity
- id: coverage
  doc: '[..<max>] filter alignments by percentage of query covered 0<=min<=max<=100;  blocks
    (or HSPs) outside min..max are discarded (default is no query coverage filtering)'
  type: long
  inputBinding:
    prefix: --coverage
- id: output
  doc: specify output alignment file;  otherwise alignments are written to stdout
  type: File
  inputBinding:
    prefix: --output
- id: format
  doc: specify output format; one of lav, axt, maf, cigar, rdotplot, text or general
    (use --help=formats for more details) (by default output is LAV)
  type: string
  inputBinding:
    prefix: --format
- id: r_dotplot
  doc: create an output file suitable for plotting in R.
  type: File
  inputBinding:
    prefix: --rdotplot
- id: progress
  doc: report processing of every nth query
  type: string
  inputBinding:
    prefix: --progress
- id: help
  doc: list information about file specifiers
  type: File
  inputBinding:
    prefix: --help
- id: help
  doc: list blastz-compatible shortcuts
  type: string
  inputBinding:
    prefix: --help
- id: help
  doc: list yasra-specific shortcuts
  type: string
  inputBinding:
    prefix: --help
outputs: []
cwlVersion: v1.1
baseCommand:
- lastz_D
