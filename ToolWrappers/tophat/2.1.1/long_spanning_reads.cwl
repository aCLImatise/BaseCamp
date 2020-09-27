class: CommandLineTool
id: long_spanning_reads.cwl
inputs:
- id: in_reads_dot_fa_slashdot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- long_spanning_reads
