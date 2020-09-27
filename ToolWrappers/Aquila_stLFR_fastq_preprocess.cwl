class: CommandLineTool
id: Aquila_stLFR_fastq_preprocess.cwl
inputs:
- id: in_fast_q_one
  doc: origin stLFR fastq 1 (gz file)
  type: long
  inputBinding:
    prefix: --fastq_1
- id: in_fast_q_two
  doc: origin stLFR fastq 2 (gz file)
  type: long
  inputBinding:
    prefix: --fastq_2
- id: in_out_file
  doc: "output stLFR fastq file for Aquila_stLFR\n"
  type: File
  inputBinding:
    prefix: --out_file
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "output stLFR fastq file for Aquila_stLFR\n"
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- Aquila_stLFR_fastq_preprocess
