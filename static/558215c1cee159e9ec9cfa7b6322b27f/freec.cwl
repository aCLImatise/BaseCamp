class: CommandLineTool
id: freec.cwl
inputs:
- id: in_sample
  doc: ''
  type: string?
  inputBinding:
    prefix: -sample
- id: in_conf
  doc: ''
  type: File?
  inputBinding:
    prefix: -conf
- id: in_or
  doc: freec -conf <config file> -sample <mySample.bam> -control <myControl.bam>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- freec
