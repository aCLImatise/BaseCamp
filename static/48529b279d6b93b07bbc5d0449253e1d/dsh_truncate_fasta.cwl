class: CommandLineTool
id: dsh_truncate_fasta.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_input_fast_a_file
  doc: '[class java.io.File]  input FASTA file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-fasta-file
- id: in_output_fast_a_file
  doc: '[class java.io.File]  output FASTA file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-fasta-file
- id: in_length
  doc: '[class java.lang.Integer]  length, default 10000 [optional]'
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_alphabet
  doc: '[class java.lang.String]  input FASTA alphabet { dna, protein }, default dna
    [optional]'
  type: boolean?
  inputBinding:
    prefix: --alphabet
- id: in_line_width
  doc: '[class java.lang.Integer]  line width, default 70 [optional]'
  type: boolean?
  inputBinding:
    prefix: --line-width
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fast_a_file
  doc: '[class java.io.File]  output FASTA file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-truncate-fasta
