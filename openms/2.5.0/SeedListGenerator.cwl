#!/usr/bin/env cwl-runner

baseCommand:
- SeedListGenerator
class: CommandLineTool
cwlVersion: v1.0
id: seedlistgenerator
inputs:
- doc: "*         Input file (see below for details) (valid formats: 'mzML', 'idXML',\
    \ 'featureXML', 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "<file(s)>*     Output file(s) (valid formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: boolean
- doc: '[idXML input only] Use the monoisotopic mass of the best peptide hit for the
    m/z position (default: use precursor m/z)'
  id: use_peptide_mass
  inputBinding:
    prefix: -use_peptide_mass
  type: boolean
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
