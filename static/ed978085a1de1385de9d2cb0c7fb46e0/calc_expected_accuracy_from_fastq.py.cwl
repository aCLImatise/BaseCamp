class: CommandLineTool
id: calc_expected_accuracy_from_fastq.py.cwl
inputs:
- id: in_qv_trim_five
  doc: "Ignore length on 5' for QV calculation (default: 100\nbp)"
  type: long?
  inputBinding:
    prefix: --qv_trim_5
- id: in_qv_trim_three
  doc: "Ignore length on 3' for QV calculation (default: 30\nbp)\n"
  type: long?
  inputBinding:
    prefix: --qv_trim_3
- id: in_fast_q_filename
  doc: 'FASTQ filename (ex: lq_isoforms.fastq'
  type: string
  inputBinding:
    position: 0
- id: in_output_filename
  doc: Output FASTQ filename
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
- calc_expected_accuracy_from_fastq.py
