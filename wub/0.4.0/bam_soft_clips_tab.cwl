class: CommandLineTool
id: ../../../bam_soft_clips_tab.py.cwl
inputs:
- id: output_tab_separated
  doc: Output tab separated file.
  type: string
  inputBinding:
    prefix: -t
- id: quiet_print_bar
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_soft_clips_tab.py
