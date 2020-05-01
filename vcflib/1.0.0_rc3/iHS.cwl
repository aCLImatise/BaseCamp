#!/usr/bin/env cwl-runner

baseCommand:
- iHS
class: CommandLineTool
cwlVersion: v1.0
id: ihs
inputs:
- doc: '--target 0,1,2,3,4,5,6,7 --file my.phased.vcf  \ --region chr1:1-1000 > STDOUT
    2> STDERR          '
  id: ihs
  inputBinding:
    position: 0
  type: string
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
