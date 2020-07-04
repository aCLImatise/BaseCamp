class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iHS.cwl
inputs:
- id: target
  doc: ''
  type: string
  inputBinding:
    prefix: --target
- id: ihs
  doc: '--target 0,1,2,3,4,5,6,7 --file my.phased.vcf  \ --region chr1:1-1000 > STDOUT
    2> STDERR          '
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- iHS
