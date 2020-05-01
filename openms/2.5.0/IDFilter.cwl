#!/usr/bin/env cwl-runner

baseCommand:
- IDFilter
class: CommandLineTool
cwlVersion: v1.0
id: idfilter
inputs:
- doc: "*                                               Input file  (valid formats:\
    \ 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                                              Output file  (valid formats:\
    \ 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: ":rt [min]:[max]                                 Retention time range to extract.\
    \ (default: ':')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mz [min]:[max]                                 Mass-to-charge range to extract.\
    \ (default: ':')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":length [min]:[max]                             Keep only peptide hits with\
    \ a sequence length in this range. (default: ':')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":charge [min]:[max]                             Keep only peptide hits with\
    \ charge states in this range. (default: ':')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":pep <score>                                        The score which should\
    \ be reached by a peptide hit to be kept. (default: '0.0')"
  id: score
  inputBinding:
    prefix: -score
  type: boolean
- doc: ":prot <score>                                       The score which should\
    \ be reached by a protein hit to be kept. Use in combination with 'delete_unreferenced_peptide_hits'\
    \ to remove affected peptides. (default: '0.0')"
  id: score
  inputBinding:
    prefix: -score
  type: boolean
- doc: ":proteins <file>                                Filename of a FASTA file containing\
    \ protein sequences. All peptides that are not referencing a protein in this file\
    \ are removed. All proteins whose accessions are not present in this file are\
    \ removed. (valid formats: 'fasta')"
  id: whitelist
  inputBinding:
    prefix: -whitelist
  type: boolean
- doc: :protein_accessions <accessions>                All peptides that do not reference
    at least one of the provided protein accession are removed. Only proteins of the
    provided list are retained.
  id: whitelist
  inputBinding:
    prefix: -whitelist
  type: boolean
- doc: ":peptides <file>                                Only peptides with the same\
    \ sequence and modification assignment as any peptide in this file are kept. Use\
    \ with 'whitelist:ignore_modifications' to  only compare by sequence. (valid formats:\
    \ 'idXML')"
  id: whitelist
  inputBinding:
    prefix: -whitelist
  type: boolean
- doc: ":proteins <file>                                Filename of a FASTA file containing\
    \ protein sequences. All peptides that are referencing a protein in this file\
    \ are removed. All proteins whose accessions are present in this file are removed.\
    \ (valid formats: 'fasta')"
  id: blacklist
  inputBinding:
    prefix: -blacklist
  type: boolean
- doc: :protein_accessions <accessions>                All peptides that reference
    at least one of the provided protein accession are removed. Only proteins not
    in the provided list are retained.
  id: blacklist
  inputBinding:
    prefix: -blacklist
  type: boolean
- doc: ":peptides <file>                                Peptides with the same sequence\
    \ and modification assignment as any peptide in this file are filtered out. Use\
    \ with 'blacklist:ignore_modifications'  to only compare by sequence. (valid formats:\
    \ 'idXML')"
  id: blacklist
  inputBinding:
    prefix: -blacklist
  type: boolean
- doc: ":fasta <file>                         Fasta protein sequence database. (valid\
    \ formats: 'fasta')"
  id: in_silico_digestion
  inputBinding:
    prefix: -in_silico_digestion
  type: boolean
- doc: ":number_of_missed_cleavages [min]:[max]  Range of allowed missed cleavages\
    \ in the peptide sequences. For example: 0:1 -> peptides with two or more missed\
    \ cleavages will be removed, 0:0 -> peptides with any missed cleavages will be\
    \ removed (default: ':')"
  id: missed_cleavages
  inputBinding:
    prefix: -missed_cleavages
  type: boolean
- doc: ":n_peptide_hits <integer>                            Keep only the 'n' highest\
    \ scoring peptide hits per spectrum (for n > 0). (default: '0' min: '0')"
  id: best
  inputBinding:
    prefix: -best
  type: boolean
- doc: ":n_protein_hits <integer>                            Keep only the 'n' highest\
    \ scoring protein hits (for n > 0). (default: '0' min: '0')"
  id: best
  inputBinding:
    prefix: -best
  type: boolean
- doc: :strict                                              Keep only the highest
    scoring peptide hit. Similar to n_peptide_hits=1, but if there are ties between
    two or more highest scoring hits, none are kept.
  id: best
  inputBinding:
    prefix: -best
  type: boolean
- doc: Keep only peptide hits with variable modifications (as defined in the 'SearchParameters'
    section of the input file).
  id: var_mods
  inputBinding:
    prefix: -var_mods
  type: boolean
- doc: Only peptides matching exactly one protein are kept. Remember that isoforms
    count as different proteins!
  id: remove_shared_peptides
  inputBinding:
    prefix: -remove_shared_peptides
  type: boolean
- doc: Proteins not referenced by a peptide are retained in the IDs.
  id: keep_unreferenced_protein_hits
  inputBinding:
    prefix: -keep_unreferenced_protein_hits
  type: boolean
- doc: Remove proteins according to the information in the user parameters. Usually
    used in combination with 'delete_unreferenced_peptide_hits'.
  id: remove_decoys
  inputBinding:
    prefix: -remove_decoys
  type: boolean
- doc: Peptides not referenced by any protein are deleted in the IDs. Usually used
    in combination with 'score:prot' or 'thresh:prot'.
  id: delete_unreferenced_peptide_hits
  inputBinding:
    prefix: -delete_unreferenced_peptide_hits
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
