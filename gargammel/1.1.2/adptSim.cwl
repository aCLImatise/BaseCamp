class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/adptSim.cwl
inputs:
- id: adapter_observed_forward
  doc: '[seq]                   Adapter that is observed after the forward read (Default:  AGATCGGAAG...)'
  type: boolean
  inputBinding:
    prefix: -f
- id: adapter_observed_reverse
  doc: '[seq]                   Adapter that is observed after the reverse read (Default:  AGATCGGAAG...)'
  type: boolean
  inputBinding:
    prefix: -s
- id: desired_read_length
  doc: '[length]                Desired read length  (Default:  100)'
  type: boolean
  inputBinding:
    prefix: -l
- id: name
  doc: 'Append BAM tags or to deflines if adapters are added (Default:  not on/not
    used)'
  type: boolean
  inputBinding:
    prefix: -name
- id: tag
  doc: '[tag]                   Append this string to deflines or BAM tags (Default:  not
    on/not used)'
  type: boolean
  inputBinding:
    prefix: -tag
- id: bam_slash_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- adptSim
