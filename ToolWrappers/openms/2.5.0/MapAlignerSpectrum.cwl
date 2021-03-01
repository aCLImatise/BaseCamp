class: CommandLineTool
id: MapAlignerSpectrum.cwl
inputs:
- id: in_in
  doc: "*        Input files to align (all must have the same file type) (valid formats:\
    \ 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output files (same file type as 'in'). This option or 'trafo_out' has to be\
    \ provided; they can be used together. (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_traf_o_out
  doc: "Transformation output files. This option or 'out' has to be provided; they\
    \ can be used together. (valid formats: 'trafoXML')"
  type: string?
  inputBinding:
    prefix: -trafo_out
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
  doc: "Output files (same file type as 'in'). This option or 'trafo_out' has to be\
    \ provided; they can be used together. (valid formats: 'mzML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- MapAlignerSpectrum
