class: CommandLineTool
id: haplo.cwl
inputs:
- id: in__inputfile_input
  doc: '| --input_file      Input file'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__outputfile_output
  doc: '| --output_file     Output file'
  type: File
  inputBinding:
    prefix: -o
- id: in_force_overwrite
  doc: Force overwriting of output file
  type: File
  inputBinding:
    prefix: --force_overwrite
- id: in_species
  doc: '[species]    Species to use [default: "human"]'
  type: boolean
  inputBinding:
    prefix: --species
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outputfile_output
  doc: '| --output_file     Output file'
  type: File
  outputBinding:
    glob: $(inputs.in__outputfile_output)
- id: out_force_overwrite
  doc: Force overwriting of output file
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite)
cwlVersion: v1.1
baseCommand:
- haplo
