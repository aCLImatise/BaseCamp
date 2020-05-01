#!/usr/bin/env cwl-runner

baseCommand:
- DatabaseFilter
class: CommandLineTool
cwlVersion: v1.0
id: databasefilter
inputs:
- doc: "*        Input FASTA file, containing a database. (valid formats: 'fasta')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*        Input file containing identified peptides and proteins. (valid formats:\
    \ 'idXML', 'mzid')"
  id: id
  inputBinding:
    prefix: -id
  type: File
- doc: "Switch between white-/blacklisting (default: 'whitelist' valid: 'whitelist',\
    \ 'blacklist')"
  id: method
  inputBinding:
    prefix: -method
  type: string
- doc: "*       Output FASTA file where the reduced database will be written to. (valid\
    \ formats: 'fasta')"
  id: out
  inputBinding:
    prefix: -out
  type: File
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
