class: CommandLineTool
id: Epifany.cwl
inputs:
- id: in_in
  doc: "*                            Input: identification results (valid formats:\
    \ 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                           Output: identification results with scored/grouped\
    \ proteins (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_protein_fdr
  doc: "Additionally calculate the target-decoy FDR on protein-level based on the\
    \ posteriors (default: 'false' valid: 'true', 'false')"
  type: string?
  inputBinding:
    prefix: -protein_fdr
- id: in_greedy_group_resolution
  doc: "Post-process inference output with greedy resolution of shared peptides based\
    \ on the parent protein probabilities. Also adds the resolved ambiguity groups\
    \ to output. (default: 'none' valid: 'none', 'remove_associations_only', 'remove_proteins_wo_evidence')"
  type: string?
  inputBinding:
    prefix: -greedy_group_resolution
- id: in_max_psms_extreme_probability
  doc: "Set PSMs with probability higher than this to this maximum probability. (default:\
    \ '1.0')"
  type: double?
  inputBinding:
    prefix: -max_psms_extreme_probability
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Epifany
