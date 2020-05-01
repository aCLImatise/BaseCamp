#!/usr/bin/env cwl-runner

baseCommand:
- OpenSwathDecoyGenerator
class: CommandLineTool
cwlVersion: v1.0
id: openswathdecoygenerator
inputs:
- doc: "*             Input file (valid formats: 'tsv', 'mrm', 'pqp', 'TraML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Input file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'mrm', 'pqp', 'TraML')"
  id: in_type
  inputBinding:
    prefix: -in_type
  type: string
- doc: "*            Output file (valid formats: 'tsv', 'pqp', 'TraML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'tsv', 'pqp', 'TraML')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
- doc: "Decoy generation method ('shuffle','pseudo-reverse','reverse','shift') (default:\
    \ 'shuffle' valid: 'shuffle', 'pseudo-reverse', 'reverse', 'shift')"
  id: method
  inputBinding:
    prefix: -method
  type: string
- doc: "Decoy tag (default: 'DECOY_')"
  id: decoy_tag
  inputBinding:
    prefix: -decoy_tag
  type: string
- doc: "<true/false>  Whether to switch terminal K and R (to achieve different precursor\
    \ mass) (default: 'true' valid: 'true', 'false')"
  id: switch_kr
  inputBinding:
    prefix: -switchKR
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
