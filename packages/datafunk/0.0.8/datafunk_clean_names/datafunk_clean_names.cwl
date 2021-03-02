class: CommandLineTool
id: datafunk_clean_names.cwl
inputs:
- id: in_input_metadata
  doc: 'Input file: metadata (csv) for location curation'
  type: File?
  inputBinding:
    prefix: --input-metadata
- id: in_trait
  doc: Column name containing the locations
  type: string?
  inputBinding:
    prefix: --trait
- id: in_output_metadata
  doc: Output file name for resulting filtered metadata
  type: File?
  inputBinding:
    prefix: --output-metadata
- id: in_verbose
  doc: Run with high verbosity (debug level logging)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_metadata
  doc: Output file name for resulting filtered metadata
  type: File?
  outputBinding:
    glob: $(inputs.in_output_metadata)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- clean_names
