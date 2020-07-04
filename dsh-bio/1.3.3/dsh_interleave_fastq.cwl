class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dsh_interleave_fastq.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: first_fast_q_file
  doc: '[class java.io.File]  first FASTQ input file [required]'
  type: boolean
  inputBinding:
    prefix: --first-fastq-file
- id: second_fast_q_file
  doc: '[class java.io.File]  second FASTQ input file [required]'
  type: boolean
  inputBinding:
    prefix: --second-fastq-file
- id: paired_file
  doc: '[class java.io.File]  output interleaved paired FASTQ file [required]'
  type: boolean
  inputBinding:
    prefix: --paired-file
- id: unpaired_file
  doc: '[class java.io.File]  output unpaired FASTQ file [required]'
  type: boolean
  inputBinding:
    prefix: --unpaired-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-interleave-fastq
