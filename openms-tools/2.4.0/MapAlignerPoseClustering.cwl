class: CommandLineTool
id: MapAlignerPoseClustering.cwl
inputs:
- id: in
  doc: "*               Input files to align (all must have the same file type) (valid\
    \ formats: 'featureXML', 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output files (same file type as 'in'). Either this option or 'trafo_out' has\
    \ to be provided; they can be used together. (valid formats: 'featureXML', 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: traf_o_out
  doc: "Transformation output files. Either this option or 'out' has to be provided;\
    \ they can be used together. (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -trafo_out
- id: reference
  doc: ":file <file>     File to use as reference (same file format as input files\
    \ required) (valid formats: 'featureXML', 'mzML')"
  type: boolean
  inputBinding:
    prefix: -reference
- id: reference
  doc: ":index <number>  Use one of the input files as reference ('1' for the first\
    \ file, etc.). If '0', no explicit reference is set - the algorithm will select\
    \ a reference. (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -reference
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
- id: algorithm
  doc: Algorithm parameters section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- MapAlignerPoseClustering
