class: CommandLineTool
id: ../../../cd_hit_para.pl.cwl
inputs:
- id: queuing_system_supported
  doc: of queuing system, "PBS", "SGE" are supported, default PBS
  type: string
  inputBinding:
    prefix: --T
- id: file_used_crash
  doc: file, used after a crash of run
  type: string
  inputBinding:
    prefix: --R
- id: this_help
  doc: this help
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- cd-hit-para.pl
