#!/usr/bin/env cwl-runner

baseCommand:
- MyriMatchAdapter
class: CommandLineTool
cwlVersion: v1.0
id: myrimatchadapter
inputs:
- doc: "*                            Input file (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                           Output file (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Precursor monoisotopic mass tolerance. (default: '10.0')"
  id: precursor_mass_tolerance
  inputBinding:
    prefix: -precursor_mass_tolerance
  type: string
- doc: "Unit to be used for precursor mass tolerance. (default: 'ppm' valid: 'Da',\
    \ 'ppm')"
  id: precursor_mass_tolerance_unit
  inputBinding:
    prefix: -precursor_mass_tolerance_unit
  type: string
- doc: If this flag is set, the average mass is used in the precursor mass tolerance.
  id: precursor_mass_tolerance_avg
  inputBinding:
    prefix: -precursor_mass_tolerance_avg
  type: boolean
- doc: "Fragment mass error in Dalton (default: '0.3')"
  id: fragment_mass_tolerance
  inputBinding:
    prefix: -fragment_mass_tolerance
  type: string
- doc: "Unit to be used for fragment mass tolerance. (default: 'Da' valid: 'Da', 'ppm')"
  id: fragment_mass_tolerance_unit
  inputBinding:
    prefix: -fragment_mass_tolerance_unit
  type: string
- doc: "*                FASTA protein database. (valid formats: 'FASTA')"
  id: database
  inputBinding:
    prefix: -database
  type: string
- doc: "Fixed modifications, specified using Unimod (www.unimod.org) terms, e.g. 'Carbamidomethyl\
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
  id: fixed_modifications
  inputBinding:
    prefix: -fixed_modifications
  type: string
- doc: "Variable modifications, specified using Unimod (www.unimod.org) terms, e.g.\
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
  id: variable_modifications
  inputBinding:
    prefix: -variable_modifications
  type: string
- doc: "*    The 'myrimatch' executable of the MyriMatch installation. Provide a full\
    \ or relative path, or make sure it can be found in your PATH environment."
  id: my_ri_match_executable
  inputBinding:
    prefix: -myrimatch_executable
  type: string
- doc: "The number of charge states that MyriMatch will handle during all stages of\
    \ the program. (default: '3')"
  id: num_charge_states
  inputBinding:
    prefix: -NumChargeStates
  type: string
- doc: "Noise peaks are filtered out by sorting the original peaks in descending order\
    \ of intensity, and then picking peaks from that list until the cumulative ion\
    \ current of  the picked peaks divided by the total ion current (TIC) is greater\
    \ than or equal to this parameter. (default: '0.98')"
  id: tic_cut_off_percentage
  inputBinding:
    prefix: -TicCutoffPercentage
  type: string
- doc: "This parameter sets the maximum number of modified residues that may be in\
    \ any candidate sequence. (default: '2')"
  id: max_dynamic_mods
  inputBinding:
    prefix: -MaxDynamicMods
  type: string
- doc: "This parameter sets the maximum rank of peptide-spectrum-matches to report\
    \ for each spectrum. (default: '5')"
  id: max_result_rank
  inputBinding:
    prefix: -MaxResultRank
  type: string
- doc: "This parameter allows the user to control the way peptides are generated from\
    \ the protein database. For more details, see http://www.ebi.ac.uk/ontology-lookup/browse.do?\
    \ ontName=MS&termId=MS:1001045&termName=cleavage%20agent%20name . (valid: 'Trypsin',\
    \ 'Trypsin/P', 'Arg-C', 'Asp-N', 'Asp-N_ambic', 'CNBr', 'Chymotrypsin', 'Formic_acid',\
    \ 'Lys-C', 'Lys-C/P', 'PepsinA', 'TrypChymo', 'V8-DE', 'V8-E', 'glutamyl endopeptidase',\
    \ 'leukocyte elastase', 'no cleavage', 'proline endopeptidase', 'unspecific cleavage\
    \ ')"
  id: cleavage_rules
  inputBinding:
    prefix: -CleavageRules
  type: string
- doc: "By default, when generating peptides from the protein database, a peptide\
    \ must start and end at a valid cleavage site. Setting this parameter to 0 or\
    \ 1 will reduce that  requirement, so that neither terminus or only one terminus\
    \ of the peptide must match one of the cleavage rules specified in the CleavageRules\
    \ parameter. This parameter is useful to turn a tryptic digest into a semi-tryptic\
    \ digest. (default: '2')"
  id: min_termini_cleavages
  inputBinding:
    prefix: -MinTerminiCleavages
  type: string
- doc: "By default, when generating peptides from the protein database, a peptide\
    \ may contain any number of missed cleavages. A missed cleavage is a site within\
    \ the peptide that matches one of the cleavage rules (refer to CleavageRules).\
    \ Settings this parameter to some other number will stop generating peptides from\
    \ a sequence if it contains more than the specified number of missed cleavages.\
    \ (default: '-1')"
  id: max_missed_cleavages
  inputBinding:
    prefix: -MaxMissedCleavages
  type: string
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
