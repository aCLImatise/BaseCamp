class: CommandLineTool
id: hisat2_simulate_reads.py_gtf_file.cwl
inputs:
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_single_end
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --single-end
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_his_at_two_simulate_reads_do_tpy
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hisat2_simulate_reads.py
- gtf_file
