class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/IDFilter.cwl
inputs:
- id: in
  doc: "*                                               Input file  (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                                              Output file  (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: length
  doc: "[min]:[max]                                       Keep only peptide hits with\
    \ a sequence length in this range. (default: ':')"
  type: boolean
  inputBinding:
    prefix: -length
- id: charge
  doc: "[min]:[max]                                       Keep only peptide hits with\
    \ charge states in this range. (default: ':')"
  type: boolean
  inputBinding:
    prefix: -charge
- id: var_mods
  doc: Keep only peptide hits with variable modifications (as defined in the 'SearchParameters'
    section of the input file).
  type: boolean
  inputBinding:
    prefix: -var_mods
- id: unique
  doc: If a peptide hit occurs more than once per peptide ID, only one instance is
    kept.
  type: boolean
  inputBinding:
    prefix: -unique
- id: unique_per_protein
  doc: Only peptides matching exactly one protein are kept. Remember that isoforms
    count as different proteins!
  type: boolean
  inputBinding:
    prefix: -unique_per_protein
- id: keep_unreferenced_protein_hits
  doc: Proteins not referenced by a peptide are retained in the IDs.
  type: boolean
  inputBinding:
    prefix: -keep_unreferenced_protein_hits
- id: remove_decoys
  doc: Remove proteins according to the information in the user parameters. Usually
    used in combination with 'delete_unreferenced_peptide_hits'.
  type: boolean
  inputBinding:
    prefix: -remove_decoys
- id: delete_unreferenced_peptide_hits
  doc: Peptides not referenced by any protein are deleted in the IDs. Usually used
    in combination with 'score:prot' or 'thresh:prot'.
  type: boolean
  inputBinding:
    prefix: -delete_unreferenced_peptide_hits
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
outputs: []
cwlVersion: v1.1
baseCommand:
- IDFilter
