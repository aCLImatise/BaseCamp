#!/usr/bin/env cwl-runner

baseCommand:
- RNADigestor
class: CommandLineTool
cwlVersion: v1.0
id: rnadigestor
inputs:
- doc: "*                 Input file containing RNA sequences (valid formats: 'fasta')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                Output file containing sequence fragments (valid formats:\
    \ 'fasta')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "The number of allowed missed cleavages (default: '1' min: '0')"
  id: missed_cleavages
  inputBinding:
    prefix: -missed_cleavages
  type: string
- doc: "Minimum length of a fragment (default: '3')"
  id: min_length
  inputBinding:
    prefix: -min_length
  type: string
- doc: "Maximum length of a fragment (default: '30')"
  id: max_length
  inputBinding:
    prefix: -max_length
  type: string
- doc: "Digestion enzyme (RNase) (default: 'RNase_T1' valid: 'RNase_T1', 'no cleavage',\
    \ 'unspecific cleavage')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: Report each unique sequence fragment only once
  id: unique
  inputBinding:
    prefix: -unique
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
