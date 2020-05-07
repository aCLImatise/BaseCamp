class: CommandLineTool
id: calc_expected_accuracy_from_fastq.py.cwl
inputs:
- id: fast_q_filename
  doc: 'FASTQ filename (ex: lq_isoforms.fastq'
  type: string
  inputBinding:
    position: 0
- id: output_filename
  doc: Output FASTQ filename
  type: string
  inputBinding:
    position: 1
- id: qv_trim_5
  doc: "Ignore length on 5' for QV calculation (default: 100 bp)"
  type: string
  inputBinding:
    prefix: --qv_trim_5
- id: qv_trim_3
  doc: "Ignore length on 3' for QV calculation (default: 30 bp)"
  type: string
  inputBinding:
    prefix: --qv_trim_3
outputs: []
cwlVersion: v1.1
baseCommand:
- calc_expected_accuracy_from_fastq.py
