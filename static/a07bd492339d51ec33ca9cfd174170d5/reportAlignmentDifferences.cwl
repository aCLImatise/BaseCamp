class: CommandLineTool
id: ../../../reportAlignmentDifferences.cwl
inputs:
- id: in_genomic
  doc: ''
  type: string
  inputBinding:
    prefix: -genomic
- id: in_positions
  doc: ''
  type: string
  inputBinding:
    prefix: -positions
- id: in_aligns
  doc: ''
  type: boolean
  inputBinding:
    prefix: -aligns
- id: in_min_match_identity
  doc: ''
  type: long
  inputBinding:
    prefix: -minmatchidentity
- id: in_min_match_coverage
  doc: ''
  type: long
  inputBinding:
    prefix: -minmatchcoverage
- id: in_mer_size
  doc: ''
  type: long
  inputBinding:
    prefix: -mersize
- id: in_ignore
  doc: ''
  type: long
  inputBinding:
    prefix: -ignore
- id: in_num_threads
  doc: ''
  type: long
  inputBinding:
    prefix: -numthreads
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_output
  doc: ''
  type: long
  inputBinding:
    prefix: -output
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: long
  inputBinding:
    prefix: -i
- id: in_snapper_two
  doc: -queries Q.fasta
  type: long
  inputBinding:
    position: 0
- id: in_report_alignment_differences
  doc: -i Q.best.sim4db
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reportAlignmentDifferences
