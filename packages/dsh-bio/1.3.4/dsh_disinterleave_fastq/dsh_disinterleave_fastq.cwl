class: CommandLineTool
id: dsh_disinterleave_fastq.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: in_paired_file
  doc: '[class java.io.File]  interleaved paired FASTQ input file [required]'
  type: boolean
  inputBinding:
    prefix: --paired-file
- id: in_unpaired_file
  doc: '[class java.io.File]  unpaired FASTQ input file [optional]'
  type: boolean
  inputBinding:
    prefix: --unpaired-file
- id: in_first_fast_q_file
  doc: '[class java.io.File]  first FASTQ output file [required]'
  type: File
  inputBinding:
    prefix: --first-fastq-file
- id: in_second_fast_q_file
  doc: '[class java.io.File]  second FASTQ output file [required]'
  type: File
  inputBinding:
    prefix: --second-fastq-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_first_fast_q_file
  doc: '[class java.io.File]  first FASTQ output file [required]'
  type: File
  outputBinding:
    glob: $(inputs.in_first_fast_q_file)
- id: out_second_fast_q_file
  doc: '[class java.io.File]  second FASTQ output file [required]'
  type: File
  outputBinding:
    glob: $(inputs.in_second_fast_q_file)
cwlVersion: v1.1
baseCommand:
- dsh-disinterleave-fastq
