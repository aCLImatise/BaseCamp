class: CommandLineTool
id: lofreq_indelqual.cwl
inputs:
- id: in_uniform
  doc: "Add this indel quality uniformly to all bases.\nUse two comma separated values\
    \ to specify\ninsertion and deletion quality separately.\n(clashes with --dindel)"
  type: long?
  inputBinding:
    prefix: --uniform
- id: in_din_del
  doc: "Add Dindel's indel qualities (Illumina specific)\n(clashes with -u; needs\
    \ --ref)"
  type: boolean?
  inputBinding:
    prefix: --dindel
- id: in_ref
  doc: "Reference sequence used for mapping\n(Only required for --dindel)"
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_out
  doc: Output BAM file [- = stdout = default]
  type: File?
  inputBinding:
    prefix: --out
- id: in_verbose
  doc: Be verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output BAM file [- = stdout = default]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- lofreq
- indelqual
