class: CommandLineTool
id: dsh_compress_bed.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_input_bed_file
  doc: '[class java.io.File]  input BED file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-bed-file
- id: in_output_bed_file
  doc: '[class java.io.File]  output BED file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-bed-file
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_file
  doc: '[class java.io.File]  output BED file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bed_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-compress-bed
