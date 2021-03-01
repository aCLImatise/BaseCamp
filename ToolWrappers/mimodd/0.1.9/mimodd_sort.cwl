class: CommandLineTool
id: mimodd_sort.cwl
inputs:
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_i_format
  doc: '|sam     the format of the input file (default: assume bam)'
  type: File?
  inputBinding:
    prefix: --iformat
- id: in_o_format
  doc: "|sam     specify whether the output should be in sam or bam\nformat (default:\
    \ bam)"
  type: string?
  inputBinding:
    prefix: --oformat
- id: in_by_name
  doc: sort by read name
  type: boolean?
  inputBinding:
    prefix: --by-name
- id: in_compression_level_from
  doc: compression level, from 0 to 9
  type: long?
  inputBinding:
    prefix: -l
- id: in_memory
  doc: "maximal amount of memory to be used in GB (overrides\nconfig setting)"
  type: string?
  inputBinding:
    prefix: --memory
- id: in_threads
  doc: "the number of threads to use (overrides config\nsetting)\n"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sort
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- mimodd
- sort
