class: CommandLineTool
id: ../../../amptk_sample.cwl
inputs:
- id: in_input
  doc: Input FASTQ file
  type: boolean
  inputBinding:
    prefix: --input
- id: in_num_reads
  doc: Number of reads to sub-sample to
  type: boolean
  inputBinding:
    prefix: --num_reads
- id: in_out
  doc: Output FASTQ file name
  type: File
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output FASTQ file name
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- amptk
- sample
