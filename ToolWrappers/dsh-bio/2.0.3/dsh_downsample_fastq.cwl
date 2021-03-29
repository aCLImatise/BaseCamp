class: CommandLineTool
id: dsh_downsample_fastq.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_input_fast_q_file
  doc: '[class java.io.File]  input FASTQ file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-fastq-file
- id: in_output_fast_q_file
  doc: '[class java.io.File]  output FASTQ file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-fastq-file
- id: in_probability
  doc: '[class java.lang.Double]  probability a FASTQ record will be removed, [0.0-1.0]
    [required]'
  type: boolean?
  inputBinding:
    prefix: --probability
- id: in_seed
  doc: '[class java.lang.Integer]  random number seed, default relates to current
    time [optional]'
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fast_q_file
  doc: '[class java.io.File]  output FASTQ file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_q_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.3--0
cwlVersion: v1.1
baseCommand:
- dsh-downsample-fastq
