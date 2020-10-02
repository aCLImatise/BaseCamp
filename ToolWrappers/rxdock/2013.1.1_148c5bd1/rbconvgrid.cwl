class: CommandLineTool
id: rbconvgrid.cwl
inputs:
- id: in_inputfile_input_filename
  doc: <InputFile> - input RbtVdwGridSF binary grid filename
  type: boolean
  inputBinding:
    prefix: -i
- id: in_outputfile_output_insightii
  doc: <OutputFile> - output InsightII ascii grid filename
  type: File
  inputBinding:
    prefix: -o
- id: in_gridnum_grid_number
  doc: <GridNum> - grid number to convert (default = list grids)
  type: boolean
  inputBinding:
    prefix: -n
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_grid_num
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outputfile_output_insightii
  doc: <OutputFile> - output InsightII ascii grid filename
  type: File
  outputBinding:
    glob: $(inputs.in_outputfile_output_insightii)
cwlVersion: v1.1
baseCommand:
- rbconvgrid
