class: CommandLineTool
id: iHS.cwl
inputs:
- id: ihs
  doc: '--target 0,1,2,3,4,5,6,7 --file my.phased.vcf  \ --region chr1:1-1000 > STDOUT
    2> STDERR          '
  type: string
  inputBinding:
    position: 0
- id: your
  doc: "goes here       -'                "
  type: string
  inputBinding:
    prefix: '-     Your'
outputs: []
cwlVersion: v1.1
baseCommand:
- iHS
