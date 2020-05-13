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
- id: out_precursor
  doc: "Output file which contains the deviations from the precursors (valid formats:\
    \ 'tsv')"
  type: File
  inputBinding:
    prefix: -out_precursor
- id: precursor_error_ppm
  doc: If this flag is used, the precursor mass tolerances are estimated in ppm instead
    of Da.
  type: boolean
  inputBinding:
    prefix: -precursor_error_ppm
- id: out_fragment
  doc: "Output file which contains the fragment ion m/z deviations (valid formats:\
    \ 'tsv')"
  type: File
  inputBinding:
    prefix: -out_fragment
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
