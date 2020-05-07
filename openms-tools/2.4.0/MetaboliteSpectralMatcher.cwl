class: CommandLineTool
id: MetaboliteSpectralMatcher.cwl
inputs:
- id: in
  doc: "*        Input spectra. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: database
  doc: "Default spectral database. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -database
- id: out
  doc: "*       MzTab file (valid formats: 'mzTab')"
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
- id: algorithm
  doc: Algorithm parameters section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
outputs: []
cwlVersion: v1.1
baseCommand:
- MetaboliteSpectralMatcher
