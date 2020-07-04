class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dsh_fastq_description.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: fast_q_file
  doc: '[class java.io.File]  input FASTQ file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --fastq-file
- id: description_file
  doc: '[class java.io.File]  output file of description lines, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --description-file
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-fastq-description
