#!/usr/bin/env cwl-runner

baseCommand:
- MSSimulator
class: CommandLineTool
cwlVersion: v1.0
id: mssimulator
inputs:
- doc: "*       Input protein sequences (valid formats: 'FASTA')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output: simulated MS raw (profile) data (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output: ground-truth picked (centroided) MS data (valid formats: 'mzML')"
  id: out_pm
  inputBinding:
    prefix: -out_pm
  type: File
- doc: "Output: ground-truth features (valid formats: 'featureXML')"
  id: out_fm
  inputBinding:
    prefix: -out_fm
  type: File
- doc: "Output: ground-truth features, grouping ESI charge variants of each parent\
    \ peptide (valid formats: 'consensusXML')"
  id: out_cm
  inputBinding:
    prefix: -out_cm
  type: File
- doc: "Output: ground-truth features, grouping labeled variants (valid formats: 'consensusXML')"
  id: out_lcm
  inputBinding:
    prefix: -out_lcm
  type: File
- doc: "Output: ground-truth features caused by contaminants (valid formats: 'featureXML')"
  id: out_cnt_m
  inputBinding:
    prefix: -out_cntm
  type: File
- doc: "Output: ground-truth MS2 peptide identifications (valid formats: 'idXML')"
  id: out_id
  inputBinding:
    prefix: -out_id
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
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
