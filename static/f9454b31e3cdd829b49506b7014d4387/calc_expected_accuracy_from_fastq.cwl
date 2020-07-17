class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/calc_expected_accuracy_from_fastq.py.cwl
inputs:
- id: qv_trim_five
  doc: "Ignore length on 5' for QV calculation (default: 100 bp)"
  type: string
  inputBinding:
    prefix: --qv_trim_5
- id: qv_trim_three
  doc: "Ignore length on 3' for QV calculation (default: 30 bp)"
  type: string
  inputBinding:
    prefix: --qv_trim_3
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
outputs: []
cwlVersion: v1.1
baseCommand:
- calc_expected_accuracy_from_fastq.py
