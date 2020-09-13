class: CommandLineTool
id: ../../../vep.cwl
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
- id: in_everything
  doc: "Shortcut switch to turn on commonly used options. See web\ndocumentation for\
    \ details [default: off]"
  type: boolean
  inputBinding:
    prefix: --everything
- id: in_fork
  doc: '[num_forks]     Use forking to improve script runtime'
  type: boolean
  inputBinding:
    prefix: --fork
- id: in_ensembl
  doc: ': 100.171092c'
  type: string
  inputBinding:
    position: 0
- id: in_ensembl_func_gen
  doc: ': 100.f0c3948'
  type: string
  inputBinding:
    position: 1
- id: in_ensembl_io
  doc: ': 100.f87ae4f'
  type: string
  inputBinding:
    position: 2
- id: in_ensembl_variation
  doc: ': 100.b220ff4'
  type: string
  inputBinding:
    position: 3
- id: in_ensembl_vep
  doc: ': 100.3'
  type: string
  inputBinding:
    position: 4
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
- vep
