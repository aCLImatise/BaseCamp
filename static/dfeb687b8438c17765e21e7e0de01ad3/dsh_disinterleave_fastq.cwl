class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dsh_disinterleave_fastq.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: paired_file
  doc: '[class java.io.File]  interleaved paired FASTQ input file [required]'
  type: boolean
  inputBinding:
    prefix: --paired-file
- id: unpaired_file
  doc: '[class java.io.File]  unpaired FASTQ input file [optional]'
  type: boolean
  inputBinding:
    prefix: --unpaired-file
- id: first_fast_q_file
  doc: '[class java.io.File]  first FASTQ output file [required]'
  type: boolean
  inputBinding:
    prefix: --first-fastq-file
- id: second_fast_q_file
  doc: '[class java.io.File]  second FASTQ output file [required]'
  type: boolean
  inputBinding:
    prefix: --second-fastq-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-disinterleave-fastq
