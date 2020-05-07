class: CommandLineTool
id: dsh_interleave_fastq.cwl
inputs:
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
