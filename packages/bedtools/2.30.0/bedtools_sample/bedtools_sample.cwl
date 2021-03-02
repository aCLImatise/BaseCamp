class: CommandLineTool
id: bedtools_sample.cwl
inputs:
- id: in_number_records_generate
  doc: "The number of records to generate.\n- Default = 1,000,000.\n- (INTEGER)"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_seed
  doc: "Supply an integer seed for the shuffling.\n- By default, the seed is chosen\
    \ automatically.\n- (INTEGER)"
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM.
  type: boolean?
  inputBinding:
    prefix: -ubam
- id: in_require_same_strandedness
  doc: "Require same strandedness.  That is, only give records\nthat have the same\
    \ strand. Use '-s forward' or '-s reverse'\nfor forward or reverse strand records,\
    \ respectively.\n- By default, records are reported without respect to strand."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_header
  doc: the header from the input file prior to results.
  type: File?
  inputBinding:
    prefix: -header
- id: in_bed
  doc: If using BAM input, write output as BED.
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_no_buf
  doc: "Disable buffered output. Using this option will cause each line\nof output\
    \ to be printed as it is generated, rather than saved\nin a buffer. This will\
    \ make printing large output files\nnoticeably slower, but can be useful in conjunction\
    \ with\nother software tools and scripts that need to process one\nline of bedtools\
    \ output at a time."
  type: boolean?
  inputBinding:
    prefix: -nobuf
- id: in_i_obuf
  doc: "Specify amount of memory to use for input buffer.\nTakes an integer argument.\
    \ Optional suffixes K/M/G supported.\nNote: currently has no effect with compressed\
    \ files."
  type: boolean?
  inputBinding:
    prefix: -iobuf
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- bedtools
- sample
