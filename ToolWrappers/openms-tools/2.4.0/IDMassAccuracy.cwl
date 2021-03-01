class: CommandLineTool
id: IDMassAccuracy.cwl
inputs:
- id: in_in
  doc: "*                      Input mzML file list, containing the spectra. (valid\
    \ formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_id_in
  doc: "*                   Input idXML file list, containing the identifications.\
    \ (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -id_in
- id: in_precursor_out
  doc: "Output file which contains the deviations from the precursors (valid formats:\
    \ 'csv')"
  type: File?
  inputBinding:
    prefix: -precursor_out
- id: in_precursor_columns
  doc: "Columns which will be written to the output file (default: '[MassDifference]'\
    \ valid: 'MassDifference')"
  type: File?
  inputBinding:
    prefix: -precursor_columns
- id: in_precursor_error_ppm
  doc: If this flag is used, the precursor mass tolerances are estimated in ppm instead
    of Da.
  type: boolean?
  inputBinding:
    prefix: -precursor_error_ppm
- id: in_fragment_out
  doc: "Output file which contains the fragment ion m/z deviations (valid formats:\
    \ 'csv')"
  type: File?
  inputBinding:
    prefix: -fragment_out
- id: in_fragment_columns
  doc: "Columns which will be written to the output file (default: '[MassDifference]'\
    \ valid: 'MassDifference')"
  type: File?
  inputBinding:
    prefix: -fragment_columns
- id: in_fragment_error_ppm
  doc: If this flag is used, the fragment mass tolerances are estimated in ppm instead
    of Da.
  type: boolean?
  inputBinding:
    prefix: -fragment_error_ppm
- id: in_fragment_mass_tolerance
  doc: "Maximal fragment mass tolerance which is allowed for MS/MS spectra, used for\
    \ the calculation of matching ions. (default: '0.5')"
  type: double?
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: in_separator
  doc: "Character which should be used to separate the columns in the output files\
    \ (default: ' ')"
  type: string?
  inputBinding:
    prefix: -separator
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
- id: out_precursor_out
  doc: "Output file which contains the deviations from the precursors (valid formats:\
    \ 'csv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_precursor_out)
- id: out_precursor_columns
  doc: "Columns which will be written to the output file (default: '[MassDifference]'\
    \ valid: 'MassDifference')"
  type: File?
  outputBinding:
    glob: $(inputs.in_precursor_columns)
- id: out_fragment_out
  doc: "Output file which contains the fragment ion m/z deviations (valid formats:\
    \ 'csv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_fragment_out)
- id: out_fragment_columns
  doc: "Columns which will be written to the output file (default: '[MassDifference]'\
    \ valid: 'MassDifference')"
  type: File?
  outputBinding:
    glob: $(inputs.in_fragment_columns)
hints: []
cwlVersion: v1.1
baseCommand:
- IDMassAccuracy
