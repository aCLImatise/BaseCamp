class: CommandLineTool
id: mimodd_sort.cwl
inputs:
- id: input_file
  doc: the unsorted input file in SAM/BAM format
  type: string
  inputBinding:
    position: 0
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: i_format
  doc: '|sam     the format of the input file (default: assume bam)'
  type: string
  inputBinding:
    prefix: --iformat
- id: o_format
  doc: '|sam     specify whether the output should be in sam or bam format (default:
    bam)'
  type: string
  inputBinding:
    prefix: --oformat
- id: by_name
  doc: sort by read name
  type: boolean
  inputBinding:
    prefix: --by-name
- id: l
  doc: compression level, from 0 to 9
  type: string
  inputBinding:
    prefix: -l
- id: memory
  doc: maximal amount of memory to be used in GB (overrides config setting)
  type: string
  inputBinding:
    prefix: --memory
- id: threads
  doc: the number of threads to use (overrides config setting)
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- sort
