#!/usr/bin/env cwl-runner

baseCommand:
- PhosphoScoring
class: CommandLineTool
cwlVersion: v1.0
id: phosphoscoring
inputs:
- doc: "*                       Input file with MS/MS spectra (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                       Identification input file which contains a search\
    \ against a concatenated sequence database (valid formats: 'idXML')"
  id: id
  inputBinding:
    prefix: -id
  type: File
- doc: '*                      Identification output annotated with phosphorylation
    scores'
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Fragment mass tolerance for spectrum comparisons (default: '0.05' min: '0.0')"
  id: fragment_mass_tolerance
  inputBinding:
    prefix: -fragment_mass_tolerance
  type: string
- doc: "Unit of fragment mass tolerance (default: 'Da' valid: 'Da', 'ppm')"
  id: fragment_mass_unit
  inputBinding:
    prefix: -fragment_mass_unit
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
