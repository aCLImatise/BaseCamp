class: CommandLineTool
id: fu_sw.cwl
inputs:
- id: in_query
  doc: File with the sequence(s) to align against target
  type: File?
  inputBinding:
    prefix: --query
- id: in_target
  doc: File with the target sequence(s)
  type: File?
  inputBinding:
    prefix: --target
- id: in_id
  doc: Align only against the sequence named `ID` in the target file
  type: File?
  inputBinding:
    prefix: --id
- id: in_show_aln
  doc: Show graphical alignment
  type: boolean?
  inputBinding:
    prefix: --showaln
- id: in_pool_size
  doc: 'Number of sequences/pairs to process per thread [default: 20]'
  type: long?
  inputBinding:
    prefix: --pool-size
- id: in_min_score
  doc: 'Minimum alignment score [default: 80]'
  type: long?
  inputBinding:
    prefix: --min-score
- id: in_pct_id
  doc: 'Minimum percentage of identity [default: 85]'
  type: double?
  inputBinding:
    prefix: --pct-id
- id: in_verbose
  doc: Verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqfu:0.9.1--h38613fd_0
cwlVersion: v1.1
baseCommand:
- fu-sw
