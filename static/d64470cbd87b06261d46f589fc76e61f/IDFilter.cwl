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
- id: score
  doc: ":pep <score>                                        The score which should\
    \ be reached by a peptide hit to be kept. (default: '0')"
  type: boolean
  inputBinding:
    prefix: -score
- id: score
  doc: ":prot <score>                                       The score which should\
    \ be reached by a protein hit to be kept. Use in combination with 'delete_unreferenced_peptide_hits'\
    \ to remove affected peptides. (default: '0')"
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
- id: whitelist
  doc: :ignore_modifications                           Compare whitelisted peptides
    by sequence only.
  type: boolean
  inputBinding:
    prefix: -whitelist
- id: whitelist
  doc: ":modifications <selection>                      Keep only peptides with sequences\
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
- id: blacklist
  doc: :ignore_modifications                           Compare blacklisted peptides
    by sequence only.
  type: boolean
  inputBinding:
    prefix: -blacklist
- id: blacklist
  doc: ":modifications <selection>                      Remove all peptides with sequences\
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
  type: boolean
  inputBinding:
    prefix: -blacklist
- id: in_silico_digestion
  doc: ":fasta <file>                         Fasta protein sequence database. (valid\
    \ formats: 'fasta')"
  type: boolean
  inputBinding:
    prefix: -in_silico_digestion
- id: in_silico_digestion
  doc: ":enzyme <enzyme>                      Enzyme used for the digestion of the\
    \ sample (default: 'Trypsin' valid: 'PepsinA', 'Lys-N', 'Lys-C/P', 'Lys-C', 'Formic_acid',\
    \ 'Chymotrypsin/P', 'CNBr' , 'Alpha-lytic protease', '2-iodobenzoate', 'iodosobenzoate',\
    \ 'Trypsin', 'staphylococcal protease/D', 'proline-endopeptidase/HKR', 'Glu-C+P',\
    \ 'TrypChy mo', 'Trypsin/P', 'V8-DE', 'elastase-trypsin-chymotrypsin', 'no cleavage',\
    \ 'unspecific cleavage', 'V8-E', 'leukocyte elastase', 'proline endopeptidase\
    \ ', 'glutamyl endopeptidase', 'Chymotrypsin', 'Arg-C', 'Asp-N', 'Asp-N/B', 'Asp-N_ambic',\
    \ 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'Arg-C/P' )"
  type: boolean
  inputBinding:
    prefix: -in_silico_digestion
- id: in_silico_digestion
  doc: ":specificity <specificity>            Specificity of the filter (default:\
    \ 'full' valid: 'full', 'semi', 'none')"
  type: boolean
  inputBinding:
    prefix: -in_silico_digestion
- id: in_silico_digestion
  doc: ":missed_cleavages <integer>           Range of allowed missed cleavages in\
    \ the peptide sequences By default missed cleavages are ignored (default: '-1'\
    \ min: '-1')"
  type: boolean
  inputBinding:
    prefix: -in_silico_digestion
- id: in_silico_digestion
  doc: :methionine_cleavage                  Allow methionine cleavage at the N-terminus
    of the protein.
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
- id: missed_cleavages
  doc: ":enzyme <enzyme>                         Enzyme used for the digestion of\
    \ the sample (default: 'Trypsin' valid: 'PepsinA', 'Lys-N', 'Lys-C/P', 'Lys-C',\
    \ 'Formic_acid', 'Chymotrypsin/P', 'CNBr' , 'Alpha-lytic protease', '2-iodobenzoate',\
    \ 'iodosobenzoate', 'Trypsin', 'staphylococcal protease/D', 'proline-endopeptidase/HKR',\
    \ 'Glu-C+P', 'TrypChy mo', 'Trypsin/P', 'V8-DE', 'elastase-trypsin-chymotrypsin',\
    \ 'no cleavage', 'unspecific cleavage', 'V8-E', 'leukocyte elastase', 'proline\
    \ endopeptidase ', 'glutamyl endopeptidase', 'Chymotrypsin', 'Arg-C', 'Asp-N',\
    \ 'Asp-N/B', 'Asp-N_ambic', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P',\
    \ 'Arg-C/P' )"
  type: boolean
  inputBinding:
    prefix: -missed_cleavages
- id: mz
  doc: ":error <float>                                         Filtering by deviation\
    \ to theoretical mass (disabled for negative values). (default: '-1')"
  type: boolean
  inputBinding:
    prefix: -mz
- id: mz
  doc: ":unit <String>                                         Absolute or relative\
    \ error. (default: 'ppm' valid: 'Da', 'ppm')"
  type: boolean
  inputBinding:
    prefix: -mz
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
