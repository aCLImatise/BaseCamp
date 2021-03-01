class: CommandLineTool
id: memprotmd_sim_list.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_simulations
  doc: "Path to the output JSON file. Accepted formats: json.\n"
  type: File?
  inputBinding:
    prefix: --output_simulations
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_simulations
  doc: "Path to the output JSON file. Accepted formats: json.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_simulations)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_io:3.5.1--py_0
cwlVersion: v1.1
baseCommand:
- memprotmd_sim_list
