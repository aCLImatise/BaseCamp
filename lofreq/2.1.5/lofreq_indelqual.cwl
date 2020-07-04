class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lofreq_indelqual.cwl
inputs:
- id: _uniform_int
  doc: "| --uniform INT[,INT]  Add this indel quality uniformly to all bases. Use\
    \ two comma separated values to specify insertion and deletion quality separately.\
    \ (clashes with --dindel) --dindel             Add Dindel's indel qualities (Illumina\
    \ specific) (clashes with -u; needs --ref)"
  type: boolean
  inputBinding:
    prefix: -u
- id: _ref_reference
  doc: '| --ref                Reference sequence used for mapping (Only required
    for --dindel)'
  type: boolean
  inputBinding:
    prefix: -f
- id: _file_output
  doc: '| --out FILE           Output BAM file [- = stdout = default] --verbose            Be
    verbose'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- indelqual
