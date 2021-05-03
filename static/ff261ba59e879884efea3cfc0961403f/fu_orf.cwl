class: CommandLineTool
id: fu_orf.cwl
inputs:
- id: in_r_one
  doc: First paired end file
  type: File?
  inputBinding:
    prefix: --R1
- id: in_r_two
  doc: Second paired end file
  type: File?
  inputBinding:
    prefix: --R2
- id: in_min_size
  doc: 'Minimum ORF size (aa) [default: 25]'
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_prefix
  doc: Rename reads using this prefix
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_min_overlap
  doc: 'Minimum PE overlap [default: 12]'
  type: long?
  inputBinding:
    prefix: --min-overlap
- id: in_max_overlap
  doc: 'Maximum PE overlap [default: 200]'
  type: long?
  inputBinding:
    prefix: --max-overlap
- id: in_min_identity
  doc: 'Minimum sequence identity in overlap [default: 0.80]'
  type: double?
  inputBinding:
    prefix: --min-identity
- id: in_join
  doc: Attempt Paired-End joining
  type: boolean?
  inputBinding:
    prefix: --join
- id: in_pool_size
  doc: "Size of the sequences array to be processed\nby each working thread [default:\
    \ 250]"
  type: long?
  inputBinding:
    prefix: --pool-size
- id: in_print_verbose_log
  doc: Print verbose log
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_maximum
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_minimum
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_show
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_size
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_pe
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_18
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_identity
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_overlap
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_sequences
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_array
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_processed
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqfu:0.9.6--h38613fd_0
cwlVersion: v1.1
baseCommand:
- fu-orf
