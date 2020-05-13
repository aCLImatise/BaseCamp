class: CommandLineTool
id: lofreq_indelqual.cwl
inputs:
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: u
  doc: "| --uniform INT[,INT]  Add this indel quality uniformly to all bases. Use\
    \ two comma separated values to specify insertion and deletion quality separately.\
    \ (clashes with --dindel) --dindel             Add Dindel's indel qualities (Illumina\
    \ specific) (clashes with -u; needs --ref)"
  type: boolean
  inputBinding:
    prefix: -u
- id: f
  doc: '| --ref                Reference sequence used for mapping (Only required
    for --dindel)'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: '| --out FILE           Output BAM file [- = stdout = default] --verbose            Be
    verbose'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- indelqual
