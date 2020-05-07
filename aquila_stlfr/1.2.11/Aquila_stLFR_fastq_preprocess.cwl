class: CommandLineTool
id: Aquila_stLFR_fastq_preprocess.cwl
inputs:
- id: fast_q_1
  doc: ', -1 FASTQ_1 origin stLFR fastq 1 (gz file)'
  type: string
  inputBinding:
    prefix: --fastq_1
- id: fast_q_2
  doc: ', -2 FASTQ_2 origin stLFR fastq 2 (gz file)'
  type: string
  inputBinding:
    prefix: --fastq_2
- id: out_file
  doc: output stLFR fastq file for Aquila_stLFR
  type: string
  inputBinding:
    prefix: --out_file
outputs: []
cwlVersion: v1.1
baseCommand:
- Aquila_stLFR_fastq_preprocess
