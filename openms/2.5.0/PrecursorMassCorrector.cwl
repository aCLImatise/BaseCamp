class: CommandLineTool
id: PrecursorMassCorrector.cwl
inputs:
- id: in
  doc: "*                            Input mzML file containing the spectra. (valid\
    \ formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                           Output mzML file. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: feature_in
  doc: "Input featureXML file, containing features; if set, the MS/MS spectra precursor\
    \ entries  will be matched to the feature m/z values if possible. (valid formats:\
    \ 'featureXML')"
  type: File
  inputBinding:
    prefix: -feature_in
- id: precursor_mass_tolerance
  doc: "Maximal deviation in Th which is acceptable to be corrected; this value should\
    \ be set to the instruments selection window. (default: '1.5' min: '0.0')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance
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
- PrecursorMassCorrector
