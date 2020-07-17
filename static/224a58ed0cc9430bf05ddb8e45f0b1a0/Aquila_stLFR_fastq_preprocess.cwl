class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Aquila_stLFR_fastq_preprocess.cwl
inputs:
- id: fast_q_one
  doc: origin stLFR fastq 1 (gz file)
  type: string
  inputBinding:
    prefix: --fastq_1
- id: fast_q_two
  doc: origin stLFR fastq 2 (gz file)
  type: string
  inputBinding:
    prefix: --fastq_2
- id: out_file
  doc: output stLFR fastq file for Aquila_stLFR
  type: string
  inputBinding:
    prefix: --out_file
- id: use
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_stLFR_fastq_preprocess
