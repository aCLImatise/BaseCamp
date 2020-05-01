#!/usr/bin/env cwl-runner

baseCommand:
- MultiplexResolver
class: CommandLineTool
cwlVersion: v1.0
id: multiplexresolver
inputs:
- doc: "*            Peptide multiplets with assigned sequence information (valid\
    \ formats: 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*           Complete peptide multiplets. (valid formats: 'consensusXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Optional output containing peptide multiplets without ID annotation or with\
    \ conflicting quant/ID information. (valid formats: 'consensusXML')"
  id: out_conflicts
  inputBinding:
    prefix: -out_conflicts
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
- doc: Parameters for the algorithm.
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: Isotopic labels that can be specified in section 'algorithm:labels'.
  id: labels
  inputBinding:
    prefix: '- labels'
  type: boolean
