class: CommandLineTool
id: MyriMatchAdapter.cwl
inputs:
- id: in
  doc: "*                            Input file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                           Output file (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: precursor_mass_tolerance
  doc: "Precursor monoisotopic mass tolerance. (default: '10.0')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance
- id: precursor_mass_tolerance_unit
  doc: "Unit to be used for precursor mass tolerance. (default: 'ppm' valid: 'Da',\
    \ 'ppm')"
  type: string
  inputBinding:
    prefix: -precursor_mass_tolerance_unit
- id: precursor_mass_tolerance_avg
  doc: If this flag is set, the average mass is used in the precursor mass tolerance.
  type: boolean
  inputBinding:
    prefix: -precursor_mass_tolerance_avg
- id: fragment_mass_tolerance
  doc: "Fragment mass error in Dalton (default: '0.3')"
  type: string
  inputBinding:
    prefix: -fragment_mass_tolerance
- id: fragment_mass_tolerance_unit
  doc: "Unit to be used for fragment mass tolerance. (default: 'Da' valid: 'Da', 'ppm')"
  type: string
  inputBinding:
    prefix: -fragment_mass_tolerance_unit
- id: database
  doc: "*                FASTA protein database. (valid formats: 'FASTA')"
  type: string
  inputBinding:
    prefix: -database
- id: fixed_modifications
  doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
    \ (C)' or 'Oxidation (M)' (default: '[Carbamidomethyl (C)]' valid: '15N-oxobutano\
    \ ic (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic (Protein\
    \ N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Ace tyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3)\
    \ (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)',\
    \ 'Acetyldeoxyhypusine (K)' , 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne ... k:SMCC (C)', 'Xlink:SSD (K)', 'ZGB\
    \ (K)', 'ZGB (N-term)')"
  type: string
  inputBinding:
    prefix: -fixed_modifications
- id: variable_modifications
  doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
    \ 'Carbamidomethyl (C)' or 'Oxidation (M)' (default: '[Oxidation (M)]' valid:\
    \ '15N-oxobutanoic  (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic\
    \ (Protein N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-su ccinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+ Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3)\
    \ (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)',\
    \ 'Acetyldeoxyhypusine (K)', 'Ace tylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne (M)', ... k:SMCC (C)', 'Xlink:SSD (K)',\
    \ 'ZGB (K)', 'ZGB (N-term)')"
  type: string
  inputBinding:
    prefix: -variable_modifications
- id: my_ri_match_executable
  doc: "*    The 'myrimatch' executable of the MyriMatch installation. Provide a full\
    \ or relative path, or make sure it can be found in your PATH environment."
  type: string
  inputBinding:
    prefix: -myrimatch_executable
- id: num_charge_states
  doc: "The number of charge states that MyriMatch will handle during all stages of\
    \ the program. (default: '3')"
  type: string
  inputBinding:
    prefix: -NumChargeStates
- id: tic_cut_off_percentage
  doc: "Noise peaks are filtered out by sorting the original peaks in descending order\
    \ of intensity, and then picking peaks from that list until the cumulative ion\
    \ current of  the picked peaks divided by the total ion current (TIC) is greater\
    \ than or equal to this parameter. (default: '0.98')"
  type: string
  inputBinding:
    prefix: -TicCutoffPercentage
- id: max_dynamic_mods
  doc: "This parameter sets the maximum number of modified residues that may be in\
    \ any candidate sequence. (default: '2')"
  type: string
  inputBinding:
    prefix: -MaxDynamicMods
- id: max_result_rank
  doc: "This parameter sets the maximum rank of peptide-spectrum-matches to report\
    \ for each spectrum. (default: '5')"
  type: string
  inputBinding:
    prefix: -MaxResultRank
- id: cleavage_rules
  doc: "This parameter allows the user to control the way peptides are generated from\
    \ the protein database. For more details, see http://www.ebi.ac.uk/ontology-lookup/browse.do?\
    \ ontName=MS&termId=MS:1001045&termName=cleavage%20agent%20name . (valid: 'Trypsin',\
    \ 'Trypsin/P', 'Arg-C', 'Asp-N', 'Asp-N_ambic', 'CNBr', 'Chymotrypsin', 'Formic_acid',\
    \ 'Lys-C', 'Lys-C/P', 'PepsinA', 'TrypChymo', 'V8-DE', 'V8-E', 'glutamyl endopeptidase',\
    \ 'leukocyte elastase', 'no cleavage', 'proline endopeptidase', 'unspecific cleavage\
    \ ')"
  type: string
  inputBinding:
    prefix: -CleavageRules
- id: min_termini_cleavages
  doc: "By default, when generating peptides from the protein database, a peptide\
    \ must start and end at a valid cleavage site. Setting this parameter to 0 or\
    \ 1 will reduce that  requirement, so that neither terminus or only one terminus\
    \ of the peptide must match one of the cleavage rules specified in the CleavageRules\
    \ parameter. This parameter is useful to turn a tryptic digest into a semi-tryptic\
    \ digest. (default: '2')"
  type: string
  inputBinding:
    prefix: -MinTerminiCleavages
- id: max_missed_cleavages
  doc: "By default, when generating peptides from the protein database, a peptide\
    \ may contain any number of missed cleavages. A missed cleavage is a site within\
    \ the peptide that matches one of the cleavage rules (refer to CleavageRules).\
    \ Settings this parameter to some other number will stop generating peptides from\
    \ a sequence if it contains more than the specified number of missed cleavages.\
    \ (default: '-1')"
  type: string
  inputBinding:
    prefix: -MaxMissedCleavages
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
- MyriMatchAdapter
