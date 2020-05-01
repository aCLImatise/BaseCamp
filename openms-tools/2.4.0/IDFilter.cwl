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
- doc: ":pep <score>                                        The score which should\
    \ be reached by a peptide hit to be kept. (default: '0')"
  id: score
  inputBinding:
    prefix: -score
  type: boolean
- doc: ":prot <score>                                       The score which should\
    \ be reached by a protein hit to be kept. Use in combination with 'delete_unreferenced_peptide_hits'\
    \ to remove affected peptides. (default: '0')"
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
- doc: :ignore_modifications                           Compare whitelisted peptides
    by sequence only.
  id: whitelist
  inputBinding:
    prefix: -whitelist
  type: boolean
- doc: ":modifications <selection>                      Keep only peptides with sequences\
    \ that contain (any of) the selected modification(s) (valid: '15N-oxobutanoic\
    \ (N-term C)', '2-dimethylsuccinyl (C)',  '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3)\
    \ (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H (3) (Y)', 'Acetyldeoxyhypusine\
    \ (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC\
    \ (S)', 'AEC-MAEC (T)', 'AEC-MA EC:2H(4) (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne\
    \ (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)',\
    \ 'Ala->Arg (A)', ... (K)', 'Xlink:EGScleaved (K)', 'Xlink:SMCC (C)', 'Xlink:SSD\
    \ (K)', 'ZGB (K)', 'ZGB (N-term)')"
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
- doc: :ignore_modifications                           Compare blacklisted peptides
    by sequence only.
  id: blacklist
  inputBinding:
    prefix: -blacklist
  type: boolean
- doc: ":modifications <selection>                      Remove all peptides with sequences\
    \ that contain (any of) the selected modification(s) (valid: '15N-oxobutanoic\
    \ (N-term C)', '2-dimethylsuccinyl (C)',  '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3)\
    \ (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H (3) (Y)', 'Acetyldeoxyhypusine\
    \ (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC\
    \ (S)', 'AEC-MAEC (T)', 'AEC-MA EC:2H(4) (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne\
    \ (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)',\
    \ 'Ala->Arg (A)', ... (K)', 'Xlink:EGScleaved (K)', 'Xlink:SMCC (C)', 'Xlink:SSD\
    \ (K)', 'ZGB (K)', 'ZGB (N-term)')"
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
- doc: ":enzyme <enzyme>                      Enzyme used for the digestion of the\
    \ sample (default: 'Trypsin' valid: 'PepsinA', 'Lys-N', 'Lys-C/P', 'Lys-C', 'Formic_acid',\
    \ 'Chymotrypsin/P', 'CNBr' , 'Alpha-lytic protease', '2-iodobenzoate', 'iodosobenzoate',\
    \ 'Trypsin', 'staphylococcal protease/D', 'proline-endopeptidase/HKR', 'Glu-C+P',\
    \ 'TrypChy mo', 'Trypsin/P', 'V8-DE', 'elastase-trypsin-chymotrypsin', 'no cleavage',\
    \ 'unspecific cleavage', 'V8-E', 'leukocyte elastase', 'proline endopeptidase\
    \ ', 'glutamyl endopeptidase', 'Chymotrypsin', 'Arg-C', 'Asp-N', 'Asp-N/B', 'Asp-N_ambic',\
    \ 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'Arg-C/P' )"
  id: in_silico_digestion
  inputBinding:
    prefix: -in_silico_digestion
  type: boolean
- doc: ":specificity <specificity>            Specificity of the filter (default:\
    \ 'full' valid: 'full', 'semi', 'none')"
  id: in_silico_digestion
  inputBinding:
    prefix: -in_silico_digestion
  type: boolean
- doc: ":missed_cleavages <integer>           Range of allowed missed cleavages in\
    \ the peptide sequences By default missed cleavages are ignored (default: '-1'\
    \ min: '-1')"
  id: in_silico_digestion
  inputBinding:
    prefix: -in_silico_digestion
  type: boolean
- doc: :methionine_cleavage                  Allow methionine cleavage at the N-terminus
    of the protein.
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
- doc: ":enzyme <enzyme>                         Enzyme used for the digestion of\
    \ the sample (default: 'Trypsin' valid: 'PepsinA', 'Lys-N', 'Lys-C/P', 'Lys-C',\
    \ 'Formic_acid', 'Chymotrypsin/P', 'CNBr' , 'Alpha-lytic protease', '2-iodobenzoate',\
    \ 'iodosobenzoate', 'Trypsin', 'staphylococcal protease/D', 'proline-endopeptidase/HKR',\
    \ 'Glu-C+P', 'TrypChy mo', 'Trypsin/P', 'V8-DE', 'elastase-trypsin-chymotrypsin',\
    \ 'no cleavage', 'unspecific cleavage', 'V8-E', 'leukocyte elastase', 'proline\
    \ endopeptidase ', 'glutamyl endopeptidase', 'Chymotrypsin', 'Arg-C', 'Asp-N',\
    \ 'Asp-N/B', 'Asp-N_ambic', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P',\
    \ 'Arg-C/P' )"
  id: missed_cleavages
  inputBinding:
    prefix: -missed_cleavages
  type: boolean
- doc: ":error <float>                                         Filtering by deviation\
    \ to theoretical mass (disabled for negative values). (default: '-1')"
  id: mz
  inputBinding:
    prefix: -mz
  type: boolean
- doc: ":unit <String>                                         Absolute or relative\
    \ error. (default: 'ppm' valid: 'Da', 'ppm')"
  id: mz
  inputBinding:
    prefix: -mz
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
- doc: "[min]:[max]                                       Keep only peptide hits with\
    \ a sequence length in this range. (default: ':')"
  id: length
  inputBinding:
    prefix: -length
  type: boolean
- doc: "[min]:[max]                                       Keep only peptide hits with\
    \ charge states in this range. (default: ':')"
  id: charge
  inputBinding:
    prefix: -charge
  type: boolean
- doc: Keep only peptide hits with variable modifications (as defined in the 'SearchParameters'
    section of the input file).
  id: var_mods
  inputBinding:
    prefix: -var_mods
  type: boolean
- doc: If a peptide hit occurs more than once per peptide ID, only one instance is
    kept.
  id: unique
  inputBinding:
    prefix: -unique
  type: boolean
- doc: Only peptides matching exactly one protein are kept. Remember that isoforms
    count as different proteins!
  id: unique_per_protein
  inputBinding:
    prefix: -unique_per_protein
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
