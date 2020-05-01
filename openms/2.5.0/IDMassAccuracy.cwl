#!/usr/bin/env cwl-runner

baseCommand:
- IDMassAccuracy
class: CommandLineTool
cwlVersion: v1.0
id: idmassaccuracy
inputs:
- doc: "*                      Input mzML file list, containing the spectra. (valid\
    \ formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                   Input idXML file list, containing the identifications.\
    \ (valid formats: 'idXML')"
  id: id_in
  inputBinding:
    prefix: -id_in
  type: File
- doc: "Output file which contains the deviations from the precursors (valid formats:\
    \ 'tsv')"
  id: out_precursor
  inputBinding:
    prefix: -out_precursor
  type: File
- doc: If this flag is used, the precursor mass tolerances are estimated in ppm instead
    of Da.
  id: precursor_error_ppm
  inputBinding:
    prefix: -precursor_error_ppm
  type: boolean
- doc: "Output file which contains the fragment ion m/z deviations (valid formats:\
    \ 'tsv')"
  id: out_fragment
  inputBinding:
    prefix: -out_fragment
  type: File
- doc: If this flag is used, the fragment mass tolerances are estimated in ppm instead
    of Da.
  id: fragment_error_ppm
  inputBinding:
    prefix: -fragment_error_ppm
  type: boolean
- doc: "Maximal fragment mass tolerance which is allowed for MS/MS spectra, used for\
    \ the calculation of matching ions. (default: '0.5')"
  id: fragment_mass_tolerance
  inputBinding:
    prefix: -fragment_mass_tolerance
  type: string
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
