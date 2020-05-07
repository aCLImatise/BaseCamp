class: CommandLineTool
id: Epifany.cwl
inputs:
- id: in
  doc: "*                            Input: identification results (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                           Output: identification results with scored/grouped\
    \ proteins (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: protein_fdr
  doc: "Additionally calculate the target-decoy FDR on protein-level based on the\
    \ posteriors (default: 'false' valid: 'true', 'false')"
  type: string
  inputBinding:
    prefix: -protein_fdr
- id: greedy_group_resolution
  doc: "Post-process inference output with greedy resolution of shared peptides based\
    \ on the parent protein probabilities. Also adds the resolved ambiguity groups\
    \ to output.  (default: 'none' valid: 'none', 'remove_associations_only', 'remove_proteins_wo_evidence')"
  type: string
  inputBinding:
    prefix: -greedy_group_resolution
- id: max_psms_extreme_probability
  doc: "Set PSMs with probability higher than this to this maximum probability. (default:\
    \ '1.0')"
  type: double
  inputBinding:
    prefix: -max_psms_extreme_probability
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
- id: algorithm
  doc: Parameters for the Algorithm section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
- id: http
  doc: ://www.openms.de/documentation/UTILS_Epifany.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- Epifany
