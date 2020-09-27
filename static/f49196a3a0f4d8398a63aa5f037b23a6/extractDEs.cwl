class: CommandLineTool
id: extractDEs.cwl
inputs:
- id: in_output
  doc: Write output to this file (STDOUT if omitted).
  type: File
  inputBinding:
    prefix: -output
- id: in_regions
  doc: "the genomic regions, in BED format, corresponding to the input\nsequences\
    \ for Zagros."
  type: boolean
  inputBinding:
    prefix: -regions
- id: in_mapper
  doc: 'the mapper used to map the reads (Default: rmap)'
  type: boolean
  inputBinding:
    prefix: -mapper
- id: in_tech
  doc: the technology type used in the experiment (default iCLIP)
  type: boolean
  inputBinding:
    prefix: -tech
- id: in_verbose
  doc: 'print more run info (default: false'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_about
  doc: print about message
  type: boolean
  inputBinding:
    prefix: -about
- id: in_mapped_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to this file (STDOUT if omitted).
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- extractDEs
