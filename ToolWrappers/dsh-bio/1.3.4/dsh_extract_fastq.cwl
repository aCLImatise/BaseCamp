class: CommandLineTool
id: dsh_extract_fastq.cwl
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
- id: in_name
  doc: '[class java.lang.String]  exact sequence name to match [optional]'
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_description
  doc: '[class java.lang.String]  FASTQ description regex pattern to match [optional]'
  type: boolean?
  inputBinding:
    prefix: --description
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
hints: []
cwlVersion: v1.1
baseCommand:
- dsh-extract-fastq
