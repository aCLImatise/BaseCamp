class: CommandLineTool
id: splitrim.cwl
inputs:
- id: in_in_file
  doc: =        string   Name of the FASTQ file containing all the single-end reads
  type: boolean
  inputBinding:
    prefix: --inFile
- id: in_min_l
  doc: '=          int      Minimum length for a trimmed read to be considered valid
    [default: 0]'
  type: boolean
  inputBinding:
    prefix: --minL
- id: in_recycle
  doc: "bool     When --fixL is specified and a read length is not a multiple of \"\
    fixL\", this option will append any\nremaining bases (up to the maximum fixL-1\
    \ bases) to the last fragment of length \"fixL\" [default: false]"
  type: boolean
  inputBinding:
    prefix: --recycle
- id: in_ascii
  doc: '=         int      ASCII encoding (33 or 64) [default: 33]'
  type: boolean
  inputBinding:
    prefix: --ascii
- id: in_min_q
  doc: '=          int      Minimum quality for a read to be considered valid (0-41)
    [default: 10]'
  type: boolean
  inputBinding:
    prefix: --minQ
- id: in_threads
  doc: =   uint     <disabled> no. of threads to use [1]
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_out_path
  doc: =       string   Location output files will be placed
  type: boolean
  inputBinding:
    prefix: --outPath
- id: in_prefix
  doc: =        string   Prefix of output files
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_out_encoding
  doc: '=   int      ASCII encoding of the output (33 or 64) [default: mirrors input]'
  type: boolean
  inputBinding:
    prefix: --outEncoding
- id: in_stats
  doc: '=         string   Basic read statistics output [default: uses basename from
    --inFile]'
  type: boolean
  inputBinding:
    prefix: --stats
- id: in_histo
  doc: '=         string   Post-trim read length histogram [default: uses basename
    from --inFile]'
  type: boolean
  inputBinding:
    prefix: --histo
- id: in_sort_lena_sc
  doc: 'bool     Sort read length frequency table in ascending order [default: unordered]'
  type: boolean
  inputBinding:
    prefix: --sortLenAsc
- id: in_sort_len_desc
  doc: 'bool     Sort read length frequency table in descending order [default: unordered]'
  type: boolean
  inputBinding:
    prefix: --sortLenDesc
- id: in_verbose
  doc: bool     verbosity level
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_others
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splitrim
