class: CommandLineTool
id: bam_soft_clips_tab.py.cwl
inputs:
- id: in_output_tab_file
  doc: Output tab separated file.
  type: File?
  inputBinding:
    prefix: -t
- id: in_be_quiet_print
  doc: Be quiet and do not print progress bar (False).
  type: boolean?
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
- id: out_output_tab_file
  doc: Output tab separated file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tab_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- bam_soft_clips_tab.py
