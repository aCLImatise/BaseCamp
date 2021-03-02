class: CommandLineTool
id: dsh_filter_gaf.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_query
  doc: '[class java.lang.String]  filter by query range, specify as queryName:start-end
    in 0-based coordindates [optional]'
  type: boolean?
  inputBinding:
    prefix: --query
- id: in_mapping_quality
  doc: '[class java.lang.Integer]  filter by mapping quality [optional]'
  type: boolean?
  inputBinding:
    prefix: --mapping-quality
- id: in_script
  doc: '[class java.lang.String]  filter by script, eval against r [optional]'
  type: boolean?
  inputBinding:
    prefix: --script
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
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-filter-gaf
