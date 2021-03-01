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
- id: in_out_precursor
  doc: "Output file which contains the deviations from the precursors (valid formats:\
    \ 'tsv')"
  type: File?
  inputBinding:
    prefix: -out_precursor
- id: in_precursor_error_ppm
  doc: If this flag is used, the precursor mass tolerances are estimated in ppm instead
    of Da.
  type: boolean?
  inputBinding:
    prefix: -precursor_error_ppm
- id: in_out_fragment
  doc: "Output file which contains the fragment ion m/z deviations (valid formats:\
    \ 'tsv')"
  type: File?
  inputBinding:
    prefix: -out_fragment
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
- id: out_out_precursor
  doc: "Output file which contains the deviations from the precursors (valid formats:\
    \ 'tsv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_precursor)
- id: out_out_fragment
  doc: "Output file which contains the fragment ion m/z deviations (valid formats:\
    \ 'tsv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_fragment)
hints: []
cwlVersion: v1.1
baseCommand:
- IDMassAccuracy
