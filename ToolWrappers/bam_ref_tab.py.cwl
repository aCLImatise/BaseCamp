class: CommandLineTool
id: bam_ref_tab.py.cwl
inputs:
- id: in_tab_separated_file
  doc: Tab separated file to save reference table.
  type: File
  inputBinding:
    prefix: -t
- id: in_quiet_print_false
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_save_read_strand
  doc: Save read strand in output (False).
  type: boolean
  inputBinding:
    prefix: -s
- id: in_bam
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam_ref_tab.py
