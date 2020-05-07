class: CommandLineTool
id: BaselineFilter.cwl
inputs:
- id: in
  doc: "*                Input raw data file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*               Output raw data file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: struc_elem_length
  doc: "Length of the structuring element (should be wider than maximal peak width\
    \ - see documentation). (default: '3')"
  type: long
  inputBinding:
    prefix: -struc_elem_length
- id: struc_elem_unit
  doc: "Unit of 'struc_elem_length' parameter. (default: 'Thomson' valid: 'Thomson',\
    \ 'DataPoints')"
  type: string
  inputBinding:
    prefix: -struc_elem_unit
- id: method
  doc: "The name of the morphological filter to be applied. If you are unsure, use\
    \ the default. (default: 'tophat' valid: 'identity', 'erosion', 'dilation', 'opening',\
    \ 'closing', 'gradient' , 'tophat', 'bothat', 'erosion_simple', 'dilation_simple')"
  type: string
  inputBinding:
    prefix: -method
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- BaselineFilter
