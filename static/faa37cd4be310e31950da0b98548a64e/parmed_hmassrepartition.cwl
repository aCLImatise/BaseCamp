class: CommandLineTool
id: parmed_hmassrepartition.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_top_path
  doc: 'Input AMBER topology file. Accepted formats: top, parmtop, prmtop.'
  type: File?
  inputBinding:
    prefix: --input_top_path
- id: in_output_top_path
  doc: "Output topology file (AMBER ParmTop). Accepted formats: top, parmtop, prmtop.\n"
  type: File?
  inputBinding:
    prefix: --output_top_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_top_path
  doc: "Output topology file (AMBER ParmTop). Accepted formats: top, parmtop, prmtop.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_top_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_amber:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- parmed_hmassrepartition
