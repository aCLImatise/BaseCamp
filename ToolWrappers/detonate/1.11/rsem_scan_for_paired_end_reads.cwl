class: CommandLineTool
id: rsem_scan_for_paired_end_reads.cwl
inputs:
- id: in_input_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsem-scan-for-paired-end-reads
