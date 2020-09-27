class: CommandLineTool
id: PrecursorMassCorrector.cwl
inputs:
- id: in_in
  doc: "*                            Input mzML file containing the spectra. (valid\
    \ formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                           Output mzML file. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_feature_in
  doc: "Input featureXML file, containing features; if set, the MS/MS spectra precursor\
    \ entries\nwill be matched to the feature m/z values if possible. (valid formats:\
    \ 'featureXML')"
  type: File
  inputBinding:
    prefix: -feature_in
- id: in_precursor_mass_tolerance
  doc: "Maximal deviation in Th which is acceptable to be corrected;\nthis value should\
    \ be set to the instruments selection window. (default: '1.5' min: '0.0')"
  type: long
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                           Output mzML file. (valid formats: 'mzML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- PrecursorMassCorrector
