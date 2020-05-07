class: CommandLineTool
id: IDMassAccuracy.cwl
inputs:
- id: in
  doc: "*                      Input mzML file list, containing the spectra. (valid\
    \ formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: id_in
  doc: "*                   Input idXML file list, containing the identifications.\
    \ (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id_in
- id: precursor_out
  doc: "Output file which contains the deviations from the precursors (valid formats:\
    \ 'csv')"
  type: File
  inputBinding:
    prefix: -precursor_out
- id: precursor_columns
  doc: "Columns which will be written to the output file (default: '[MassDifference]'\
    \ valid: 'MassDifference')"
  type: string
  inputBinding:
    prefix: -precursor_columns
- id: precursor_error_ppm
  doc: If this flag is used, the precursor mass tolerances are estimated in ppm instead
    of Da.
  type: boolean
  inputBinding:
    prefix: -precursor_error_ppm
- id: fragment_out
  doc: "Output file which contains the fragment ion m/z deviations (valid formats:\
    \ 'csv')"
  type: File
  inputBinding:
    prefix: -fragment_out
- id: fragment_columns
  doc: "Columns which will be written to the output file (default: '[MassDifference]'\
    \ valid: 'MassDifference')"
  type: string
  inputBinding:
    prefix: -fragment_columns
- id: fragment_error_ppm
  doc: If this flag is used, the fragment mass tolerances are estimated in ppm instead
    of Da.
  type: boolean
  inputBinding:
    prefix: -fragment_error_ppm
- id: fragment_mass_tolerance
  doc: "Maximal fragment mass tolerance which is allowed for MS/MS spectra, used for\
    \ the calculation of matching ions. (default: '0.5')"
  type: string
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: separator
  doc: "Character which should be used to separate the columns in the output files\
    \ (default: ' ')"
  type: string
  inputBinding:
    prefix: -separator
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
- IDMassAccuracy
