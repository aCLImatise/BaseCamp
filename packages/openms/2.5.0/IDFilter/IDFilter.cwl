class: CommandLineTool
id: IDFilter.cwl
inputs:
- id: in_in
  doc: "*                                               Input file  (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                                              Output file  (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_in_silico_digestion
  doc: ":fasta <file>                         Fasta protein sequence database. (valid\
    \ formats: 'fasta')"
  type: boolean
  inputBinding:
    prefix: -in_silico_digestion
- id: in_missed_cleavages
  doc: ":number_of_missed_cleavages [min]:[max]  Range of allowed missed cleavages\
    \ in the peptide sequences.\nFor example: 0:1 -> peptides with two or more missed\
    \ cleavages will be removed,\n0:0 -> peptides with any missed cleavages will be\
    \ removed (default: ':')"
  type: boolean
  inputBinding:
    prefix: -missed_cleavages
- id: in_var_mods
  doc: Keep only peptide hits with variable modifications (as defined in the 'SearchParameters'
    section of the input file).
  type: boolean
  inputBinding:
    prefix: -var_mods
- id: in_remove_shared_peptides
  doc: Only peptides matching exactly one protein are kept. Remember that isoforms
    count as different proteins!
  type: boolean
  inputBinding:
    prefix: -remove_shared_peptides
- id: in_keep_unreferenced_protein_hits
  doc: Proteins not referenced by a peptide are retained in the IDs.
  type: boolean
  inputBinding:
    prefix: -keep_unreferenced_protein_hits
- id: in_remove_decoys
  doc: Remove proteins according to the information in the user parameters. Usually
    used in combination with 'delete_unreferenced_peptide_hits'.
  type: boolean
  inputBinding:
    prefix: -remove_decoys
- id: in_delete_unreferenced_peptide_hits
  doc: Peptides not referenced by any protein are deleted in the IDs. Usually used
    in combination with 'score:prot' or 'thresh:prot'.
  type: boolean
  inputBinding:
    prefix: -delete_unreferenced_peptide_hits
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*                                              Output file  (valid formats:\
    \ 'idXML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- IDFilter
