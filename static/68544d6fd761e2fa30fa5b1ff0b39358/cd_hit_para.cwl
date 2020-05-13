class: CommandLineTool
id: cd_hit_para.pl.cwl
inputs:
- id: t
  doc: of queuing system, "PBS", "SGE" are supported, default PBS
  type: string
  inputBinding:
    prefix: --T
- id: r
  doc: file, used after a crash of run
  type: string
  inputBinding:
    prefix: --R
- id: h
  doc: this help
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- cd-hit-para.pl
