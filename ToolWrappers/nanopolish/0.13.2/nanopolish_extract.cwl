class: CommandLineTool
id: nanopolish_extract.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_recurse
  doc: recurse into subdirectories
  type: boolean?
  inputBinding:
    prefix: --recurse
- id: in_fast_q
  doc: 'extract fastq (default: fasta)'
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_type
  doc: "read type: template, complement, 2d, 2d-or-template, any\n(default: 2d-or-template)"
  type: long?
  inputBinding:
    prefix: --type
- id: in_base_caller
  doc: "[:VERSION]      consider only data produced by basecaller NAME,\noptionally\
    \ with given exact VERSION"
  type: string?
  inputBinding:
    prefix: --basecaller
- id: in_output
  doc: write output to FILE
  type: File?
  inputBinding:
    prefix: --output
- id: in_extract
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to FILE
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- nanopolish
- extract
