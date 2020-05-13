class: CommandLineTool
id: IDFilter.cwl
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
- id: precursor
  doc: ":rt [min]:[max]                                 Retention time range to extract.\
    \ (default: ':')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":mz [min]:[max]                                 Mass-to-charge range to extract.\
    \ (default: ':')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":length [min]:[max]                             Keep only peptide hits with\
    \ a sequence length in this range. (default: ':')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":charge [min]:[max]                             Keep only peptide hits with\
    \ charge states in this range. (default: ':')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: score
  doc: ":pep <score>                                        The score which should\
    \ be reached by a peptide hit to be kept. (default: '0.0')"
  type: boolean
  inputBinding:
    prefix: -score
- id: score
  doc: ":prot <score>                                       The score which should\
    \ be reached by a protein hit to be kept. Use in combination with 'delete_unreferenced_peptide_hits'\
    \ to remove affected peptides. (default: '0.0')"
  type: boolean
  inputBinding:
    prefix: -score
- id: whitelist
  doc: ":proteins <file>                                Filename of a FASTA file containing\
    \ protein sequences. All peptides that are not referencing a protein in this file\
    \ are removed. All proteins whose accessions are not present in this file are\
    \ removed. (valid formats: 'fasta')"
  type: boolean
  inputBinding:
    prefix: -whitelist
- id: whitelist
  doc: :protein_accessions <accessions>                All peptides that do not reference
    at least one of the provided protein accession are removed. Only proteins of the
    provided list are retained.
  type: boolean
  inputBinding:
    prefix: -whitelist
- id: whitelist
  doc: ":peptides <file>                                Only peptides with the same\
    \ sequence and modification assignment as any peptide in this file are kept. Use\
    \ with 'whitelist:ignore_modifications' to  only compare by sequence. (valid formats:\
    \ 'idXML')"
  type: boolean
  inputBinding:
    prefix: -whitelist
- id: blacklist
  doc: ":proteins <file>                                Filename of a FASTA file containing\
    \ protein sequences. All peptides that are referencing a protein in this file\
    \ are removed. All proteins whose accessions are present in this file are removed.\
    \ (valid formats: 'fasta')"
  type: boolean
  inputBinding:
    prefix: -blacklist
- id: blacklist
  doc: :protein_accessions <accessions>                All peptides that reference
    at least one of the provided protein accession are removed. Only proteins not
    in the provided list are retained.
  type: boolean
  inputBinding:
    prefix: -blacklist
- id: blacklist
  doc: ":peptides <file>                                Peptides with the same sequence\
    \ and modification assignment as any peptide in this file are filtered out. Use\
    \ with 'blacklist:ignore_modifications'  to only compare by sequence. (valid formats:\
    \ 'idXML')"
  type: boolean
  inputBinding:
    prefix: -blacklist
- id: in_silico_digestion
  doc: ":fasta <file>                         Fasta protein sequence database. (valid\
    \ formats: 'fasta')"
  type: boolean
  inputBinding:
    prefix: -in_silico_digestion
- id: missed_cleavages
  doc: ":number_of_missed_cleavages [min]:[max]  Range of allowed missed cleavages\
    \ in the peptide sequences. For example: 0:1 -> peptides with two or more missed\
    \ cleavages will be removed, 0:0 -> peptides with any missed cleavages will be\
    \ removed (default: ':')"
  type: boolean
  inputBinding:
    prefix: -missed_cleavages
- id: best
  doc: ":n_peptide_hits <integer>                            Keep only the 'n' highest\
    \ scoring peptide hits per spectrum (for n > 0). (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -best
- id: best
  doc: ":n_protein_hits <integer>                            Keep only the 'n' highest\
    \ scoring protein hits (for n > 0). (default: '0' min: '0')"
  type: boolean
  inputBinding:
    prefix: -best
- id: best
  doc: :strict                                              Keep only the highest
    scoring peptide hit. Similar to n_peptide_hits=1, but if there are ties between
    two or more highest scoring hits, none are kept.
  type: boolean
  inputBinding:
    prefix: -best
- id: var_mods
  doc: Keep only peptide hits with variable modifications (as defined in the 'SearchParameters'
    section of the input file).
  type: boolean
  inputBinding:
    prefix: -var_mods
- id: remove_shared_peptides
  doc: Only peptides matching exactly one protein are kept. Remember that isoforms
    count as different proteins!
  type: boolean
  inputBinding:
    prefix: -remove_shared_peptides
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
