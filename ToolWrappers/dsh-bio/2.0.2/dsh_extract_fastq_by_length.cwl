class: CommandLineTool
id: dsh_extract_fastq_by_length.cwl
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
- id: in_minimum_length
  doc: '[class java.lang.Integer]  minimum sequence length, inclusive [required]'
  type: boolean?
  inputBinding:
    prefix: --minimum-length
- id: in_maximum_length
  doc: '[class java.lang.Integer]  maximum sequence length, exclusive [required]'
  type: boolean?
  inputBinding:
    prefix: --maximum-length
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
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-extract-fastq-by-length
