#!/usr/bin/env cwl-runner

baseCommand:
- Epifany
class: CommandLineTool
cwlVersion: v1.0
id: epifany
inputs:
- doc: "*                            Input: identification results (valid formats:\
    \ 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                           Output: identification results with scored/grouped\
    \ proteins (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Additionally calculate the target-decoy FDR on protein-level based on the\
    \ posteriors (default: 'false' valid: 'true', 'false')"
  id: protein_fdr
  inputBinding:
    prefix: -protein_fdr
  type: string
- doc: "Post-process inference output with greedy resolution of shared peptides based\
    \ on the parent protein probabilities. Also adds the resolved ambiguity groups\
    \ to output.  (default: 'none' valid: 'none', 'remove_associations_only', 'remove_proteins_wo_evidence')"
  id: greedy_group_resolution
  inputBinding:
    prefix: -greedy_group_resolution
  type: string
- doc: "Set PSMs with probability higher than this to this maximum probability. (default:\
    \ '1.0')"
  id: max_psms_extreme_probability
  inputBinding:
    prefix: -max_psms_extreme_probability
  type: double
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
- doc: Parameters for the Algorithm section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/UTILS_Epifany.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
