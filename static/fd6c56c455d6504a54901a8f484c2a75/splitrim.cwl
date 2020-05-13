class: CommandLineTool
id: splitrim.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: others
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_file
  doc: =        string   Name of the FASTQ file containing all the single-end reads
  type: boolean
  inputBinding:
    prefix: --inFile
- id: min_l
  doc: '=          int      Minimum length for a trimmed read to be considered valid
    [default: 0]'
  type: boolean
  inputBinding:
    prefix: --minL
- id: recycle
  doc: 'bool     When --fixL is specified and a read length is not a multiple of "fixL",
    this option will append any remaining bases (up to the maximum fixL-1 bases) to
    the last fragment of length "fixL" [default: false]'
  type: boolean
  inputBinding:
    prefix: --recycle
- id: ascii
  doc: '=         int      ASCII encoding (33 or 64) [default: 33]'
  type: boolean
  inputBinding:
    prefix: --ascii
- id: min_q
  doc: '=          int      Minimum quality for a read to be considered valid (0-41)
    [default: 10]'
  type: boolean
  inputBinding:
    prefix: --minQ
- id: threads
  doc: =   uint     <disabled> no. of threads to use [1]
  type: boolean
  inputBinding:
    prefix: --threads
- id: out_path
  doc: =       string   Location output files will be placed
  type: boolean
  inputBinding:
    prefix: --outPath
- id: prefix
  doc: =        string   Prefix of output files
  type: boolean
  inputBinding:
    prefix: --prefix
- id: out_encoding
  doc: '=   int      ASCII encoding of the output (33 or 64) [default: mirrors input]'
  type: boolean
  inputBinding:
    prefix: --outEncoding
- id: stats
  doc: '=         string   Basic read statistics output [default: uses basename from
    --inFile]'
  type: boolean
  inputBinding:
    prefix: --stats
- id: histo
  doc: '=         string   Post-trim read length histogram [default: uses basename
    from --inFile]'
  type: boolean
  inputBinding:
    prefix: --histo
- id: sort_lena_sc
  doc: 'bool     Sort read length frequency table in ascending order [default: unordered]'
  type: boolean
  inputBinding:
    prefix: --sortLenAsc
- id: sort_len_desc
  doc: 'bool     Sort read length frequency table in descending order [default: unordered]'
  type: boolean
  inputBinding:
    prefix: --sortLenDesc
- id: verbose
  doc: bool     verbosity level
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- splitrim
