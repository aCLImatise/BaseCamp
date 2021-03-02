class: CommandLineTool
id: spectrast2spectrast_irt.py.cwl
inputs:
- id: in__input_file
  doc: '[--in]: input file'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in__output_file
  doc: '[--out]: output file'
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: '[--out]: output file'
  type: File?
  outputBinding:
    glob: $(inputs.in__output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1
cwlVersion: v1.1
baseCommand:
- spectrast2spectrast_irt.py
