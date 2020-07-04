class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/InternalCalibration.cwl
inputs:
- id: in
  doc: "*                                Input peak file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                               Output file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: r_script_executable
  doc: "Path to the Rscript executable (default: 'Rscript')."
  type: File
  inputBinding:
    prefix: -rscript_executable
- id: ppm_match_tolerance
  doc: "<delta m/z in [ppm]>  Finding calibrants in raw data uses this tolerance (for\
    \ lock masses and ID's). (default: '25.0')"
  type: boolean
  inputBinding:
    prefix: -ppm_match_tolerance
- id: ms_level
  doc: "MS levels to apply the transformation onto. Does not affect calibrant collection.\
    \ (default: '[1 2 3]')"
  type: string[]
  inputBinding:
    prefix: -ms_level
- id: rt_chunking
  doc: "<RT window in [sec]>          RT window (one-sided, i.e. left->center, or\
    \ center->right) around an MS scan in which calibrants are collected to build\
    \ a model. Set to -1 to use ALL calibrants for all scans, i.e. a global model.\
    \ (default: '300.0')"
  type: boolean
  inputBinding:
    prefix: -RT_chunking
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
- InternalCalibration
