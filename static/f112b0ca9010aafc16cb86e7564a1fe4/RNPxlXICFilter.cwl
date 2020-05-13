class: CommandLineTool
id: RNPxlXICFilter.cwl
inputs:
- id: control
  doc: "*    Input mzML file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -control
- id: treatment
  doc: "*  Input mzML file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -treatment
- id: fold_change
  doc: "Fold change between XICs (default: '2')"
  type: boolean
  inputBinding:
    prefix: -fold_change
- id: rt_to_l
  doc: "RT tolerance in [s] for finding max peak (whole RT range around RT middle)\
    \ (default: '20')"
  type: boolean
  inputBinding:
    prefix: -rt_tol
- id: mz_to_l
  doc: "M/z tolerance in [ppm] for finding a peak (default: '10')"
  type: boolean
  inputBinding:
    prefix: -mz_tol
- id: out
  doc: "*        Output of the treatment file after XIC filtering. (valid formats:\
    \ 'mzML')"
  type: File
  inputBinding:
    prefix: -out
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
- RNPxlXICFilter
