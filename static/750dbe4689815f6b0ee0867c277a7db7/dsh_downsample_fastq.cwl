class: CommandLineTool
id: dsh_downsample_fastq.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_fast_q_file
  doc: '[class java.io.File]  input FASTQ file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-fastq-file
- id: output_fast_q_file
  doc: '[class java.io.File]  output FASTQ file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-fastq-file
- id: probability
  doc: '[class java.lang.Double]  probability a FASTQ record will be removed, [0.0-1.0]
    [required]'
  type: boolean
  inputBinding:
    prefix: --probability
- id: seed
  doc: '[class java.lang.Integer]  random number seed, default relates to current
    time [optional]'
  type: boolean
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-downsample-fastq
