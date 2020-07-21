class: CommandLineTool
id: ../../../rbconvgrid.cwl
inputs:
- id: inputfile_input_filename
  doc: <InputFile> - input RbtVdwGridSF binary grid filename
  type: boolean
  inputBinding:
    prefix: -i
- id: outputfile_output_insightii
  doc: <OutputFile> - output InsightII ascii grid filename
  type: boolean
  inputBinding:
    prefix: -o
- id: gridnum_grid_number
  doc: <GridNum> - grid number to convert (default = list grids)
  type: boolean
  inputBinding:
    prefix: -n
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: grid_num
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- rbconvgrid
