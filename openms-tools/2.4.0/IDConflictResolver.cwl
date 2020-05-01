#!/usr/bin/env cwl-runner

baseCommand:
- IDConflictResolver
class: CommandLineTool
cwlVersion: v1.0
id: idconflictresolver
inputs:
- doc: "*                                           Input file (data annotated with\
    \ identifications) (valid formats: 'featureXML', 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                                          Output file (data with one peptide\
    \ identification per feature) (valid formats: 'featureXML', 'consensusXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "A map may contain multiple features with both identical (possibly modified\
    \ i.e. not stripped) sequence and charge state. The feature with the 'highest\
    \  intensity' is very likely the most reliable one. When switched on, the filter\
    \ removes the sequence annotation from the lower intensity features, thereby resolving\
    \ the multiplicity. Only the most reliable features for each (possibly modified\
    \ i.e. not stripped) sequence maintain annotated with this peptide sequence. (default:\
    \ 'off' valid: 'off', 'highest_intensity')"
  id: resolve_between_features
  inputBinding:
    prefix: -resolve_between_features
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
