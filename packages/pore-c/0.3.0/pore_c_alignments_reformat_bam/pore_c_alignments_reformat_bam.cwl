class: CommandLineTool
id: pore_c_alignments_reformat_bam.cwl
inputs:
- id: in_input_is_bam
  doc: "If piping a BAM from stdin (rather than sam)  [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --input-is-bam
- id: in_output_is_bam
  doc: "If piping a BAM to stdout (rather than sam)  [default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --output-is-bam
- id: in_set_bx_flag
  doc: 'Set the BX tag to the read name  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --set-bx-flag
- id: in_input_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_sam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pore-c:0.3.0--py_0
cwlVersion: v1.1
baseCommand:
- pore_c
- alignments
- reformat-bam
