class: CommandLineTool
id: lofreq_indelqual.cwl
inputs:
- id: in__uniform_int
  doc: "| --uniform INT[,INT]  Add this indel quality uniformly to all bases.\nUse\
    \ two comma separated values to specify\ninsertion and deletion quality separately.\n\
    (clashes with --dindel)"
  type: boolean
  inputBinding:
    prefix: -u
- id: in_din_del
  doc: "Add Dindel's indel qualities (Illumina specific)\n(clashes with -u; needs\
    \ --ref)"
  type: boolean
  inputBinding:
    prefix: --dindel
- id: in__ref_reference
  doc: "| --ref                Reference sequence used for mapping\n(Only required\
    \ for --dindel)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in__file_output
  doc: '| --out FILE           Output BAM file [- = stdout = default]'
  type: File
  inputBinding:
    prefix: -o
- id: in_verbose
  doc: Be verbose
  type: boolean
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
- id: out__file_output
  doc: '| --out FILE           Output BAM file [- = stdout = default]'
  type: File
  outputBinding:
    glob: $(inputs.in__file_output)
cwlVersion: v1.1
baseCommand:
- lofreq
- indelqual
