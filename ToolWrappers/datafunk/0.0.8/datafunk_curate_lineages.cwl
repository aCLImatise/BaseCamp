class: CommandLineTool
id: datafunk_curate_lineages.cwl
inputs:
- id: in_input_directory
  doc: Path to input directory containing traits.csv files
  type: Directory?
  inputBinding:
    prefix: --input-directory
- id: in_output_file
  doc: "Name of output CSV\n"
  type: File?
  inputBinding:
    prefix: --output_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Name of output CSV\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- curate_lineages
