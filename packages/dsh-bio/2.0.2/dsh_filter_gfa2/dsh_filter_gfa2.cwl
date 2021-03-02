class: CommandLineTool
id: dsh_filter_gfa2.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean?
  inputBinding:
    prefix: --script
- id: in_input_gfa_two_file
  doc: '[class java.io.File]  input GFA 2.0 file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-gfa2-file
- id: in_output_gfa_two_file
  doc: '[class java.io.File]  output GFA 2.0 file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-gfa2-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gfa_two_file
  doc: '[class java.io.File]  output GFA 2.0 file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gfa_two_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-filter-gfa2
