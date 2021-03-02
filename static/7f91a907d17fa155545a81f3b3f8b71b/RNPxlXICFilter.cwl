class: CommandLineTool
id: RNPxlXICFilter.cwl
inputs:
- id: in_control
  doc: "*    Input mzML file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -control
- id: in_treatment
  doc: "*  Input mzML file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -treatment
- id: in_fold_change
  doc: "Fold change between XICs (default: '2.0')"
  type: boolean?
  inputBinding:
    prefix: -fold_change
- id: in_rt_to_l
  doc: "RT tolerance in [s] for finding max peak (whole RT range around RT middle)\
    \ (default: '20.0')"
  type: boolean?
  inputBinding:
    prefix: -rt_tol
- id: in_mz_to_l
  doc: "M/z tolerance in [ppm] for finding a peak (default: '10.0')"
  type: boolean?
  inputBinding:
    prefix: -mz_tol
- id: in_out
  doc: "*        Output of the treatment file after XIC filtering. (valid formats:\
    \ 'mzML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*        Output of the treatment file after XIC filtering. (valid formats:\
    \ 'mzML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- RNPxlXICFilter
