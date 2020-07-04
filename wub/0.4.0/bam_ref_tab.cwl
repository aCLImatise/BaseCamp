class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_ref_tab.py.cwl
inputs:
- id: tab_separated_file
  doc: Tab separated file to save reference table.
  type: string
  inputBinding:
    prefix: -t
- id: quiet_print_bar
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: save_read_strand
  doc: Save read strand in output (False).
  type: boolean
  inputBinding:
    prefix: -s
- id: bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_ref_tab.py
