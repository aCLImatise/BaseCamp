class: CommandLineTool
id: rsem_scan_for_paired_end_reads.cwl
inputs:
- id: in_number_of_threads
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sam_slash_bam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-scan-for-paired-end-reads
