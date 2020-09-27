class: CommandLineTool
id: bam_soft_clips_tab.py.cwl
inputs:
- id: in_output_tab_separated
  doc: Output tab separated file.
  type: File
  inputBinding:
    prefix: -t
- id: in_quiet_print_false
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tab_separated
  doc: Output tab separated file.
  type: File
  outputBinding:
    glob: $(inputs.in_output_tab_separated)
cwlVersion: v1.1
baseCommand:
- bam_soft_clips_tab.py
