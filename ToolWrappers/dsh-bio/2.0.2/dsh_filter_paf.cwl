class: CommandLineTool
id: dsh_filter_paf.cwl
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
- id: in_target
  doc: '[class java.lang.String]  filter by target range, specify as targetName:start-end
    in 0-based coordindates [optional]'
  type: boolean?
  inputBinding:
    prefix: --target
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
- id: in_input_paf_file
  doc: '[class java.io.File]  input PAF file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-paf-file
- id: in_output_paf_file
  doc: '[class java.io.File]  output PAF file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-paf-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_paf_file
  doc: '[class java.io.File]  output PAF file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_paf_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-filter-paf
