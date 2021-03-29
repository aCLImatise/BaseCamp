class: CommandLineTool
id: dsh_compress_gaf.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_input_gaf_file
  doc: '[class java.io.File]  input GAF file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-gaf-file
- id: in_output_gaf_file
  doc: '[class java.io.File]  output GAF file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-gaf-file
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gaf_file
  doc: '[class java.io.File]  output GAF file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gaf_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.3--0
cwlVersion: v1.1
baseCommand:
- dsh-compress-gaf
