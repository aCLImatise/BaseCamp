class: CommandLineTool
id: OpenPepXL.cwl
inputs:
- id: in
  doc: "*                                       Input file containing the spectra.\
    \ (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: consensus
  doc: "*                                Input file containing the linked mass peaks.\
    \ (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -consensus
- id: database
  doc: "*                                 Input file containing the protein database.\
    \ (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -database
- id: decoy_string
  doc: "String that was appended (or prefixed - see 'prefix' flag below) to the accessions\
    \ in the protein database to indicate decoy proteins. (default: 'DECOY_')"
  type: string
  inputBinding:
    prefix: -decoy_string
- id: decoy_prefix
  doc: "Set to true, if the decoy_string is a prefix of accessions in the protein\
    \ database. Otherwise it is a suffix. (default: 'true' valid: 'true', 'false')"
  type: string
  inputBinding:
    prefix: -decoy_prefix
- id: precursor
  doc: ":mass_tolerance <value>                 Width of precursor mass tolerance\
    \ window (default: '10.0')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":mass_tolerance_unit <choice>           Unit of precursor mass tolerance.\
    \ (default: 'ppm' valid: 'ppm', 'Da')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":min_charge <number>                    Minimum precursor charge to be considered.\
    \ (default: '3')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":max_charge <number>                    Maximum precursor charge to be considered.\
    \ (default: '7')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":corrections <numbers>                  Monoisotopic peak correction. Matches\
    \ candidates for possible monoisotopic precursor peaks for experimental mass m\
    \ and given numbers n at masses (m - n * (C13 -C12)). These should be ordered\
    \ from more extreme to less extreme corrections. Numbers later in the list will\
    \ be preferred in case of ambiguities. (default: '[2 1 0]')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: fragment
  doc: ":mass_tolerance <value>                  Fragment mass tolerance (default:\
    \ '0.2')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: fragment
  doc: ":mass_tolerance_xlinks <value>           Fragment mass tolerance for cross-link\
    \ ions (default: '0.3')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: fragment
  doc: ":mass_tolerance_unit <choice>            Unit of fragment m (default: 'Da'\
    \ valid: 'ppm', 'Da')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: modifications
  doc: ":fixed <list>                       Fixed modifications, specified using UniMod\
    \ (www.unimod.org) terms, e.g. 'Carbamidomethyl (C)' (valid: '15N-oxobutanoic\
    \ (N-term C)', '15N-oxobutanoic (Protein N-term S)', '15N-oxobutanoic (Protein\
    \ N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(- 1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3)\
    \ (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)',\
    \ 'Acetyldeoxyhy pusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribo syl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', ... S (Protein N-term)', 'Xlink:EGScleaved (K)', 'Xlink:EGScleaved (Protein\
    \ N-term)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)', 'ZGB (K)', 'ZGB (N-term)')"
  type: boolean
  inputBinding:
    prefix: -modifications
- id: modifications
  doc: ":variable <list>                    Variable modifications, specified using\
    \ UniMod (www.unimod.org) terms, e.g. 'Oxidation (M)' (valid: '15N-oxobutanoic\
    \ (N-term C)', '15N-oxobutanoic (Protein  N-term S)', '15N-oxobutanoic (Protein\
    \ N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(- 1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl\
    \ (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2) (Protein\
    \ N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3)\
    \ (Protein N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)',\
    \ 'Acetyldeoxyhy pusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribo syl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein\
    \ N-term)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4)\
    \ (S)', ... S (Protein N-term)', 'Xlink:EGScleaved (K)', 'Xlink:EGScleaved (Protein\
    \ N-term)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)', 'ZGB (K)', 'ZGB (N-term)')"
  type: boolean
  inputBinding:
    prefix: -modifications
- id: modifications
  doc: ":variable_max_per_peptide <number>  Maximum number of residues carrying a\
    \ variable modification per candidate peptide (default: '2')"
  type: boolean
  inputBinding:
    prefix: -modifications
- id: peptide
  doc: ":min_size <number>                        Minimum size a peptide must have\
    \ after digestion to be considered in the search. (default: '5')"
  type: boolean
  inputBinding:
    prefix: -peptide
- id: peptide
  doc: ":missed_cleavages <number>                Number of missed cleavages. (default:\
    \ '2')"
  type: boolean
  inputBinding:
    prefix: -peptide
- id: peptide
  doc: ":enzyme <choice>                          The enzyme used for peptide digestion.\
    \ (default: 'Trypsin' valid: 'Trypsin', 'proline endopeptidase', 'glutamyl endopeptidase',\
    \ 'Alpha-lytic protease', '2-iod obenzoate', 'Asp-N/B', 'Asp-N_ambic', 'Trypsin/P',\
    \ 'V8-DE', 'V8-E', 'leukocyte elastase', 'Arg-C/P', 'iodosobenzoate', 'staphylococcal\
    \ protease/D', 'proline-e ndopeptidase/HKR', 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide',\
    \ 'Clostripain/P', 'elastase-trypsin-chymotrypsin', 'no cleavage', 'unspecific\
    \ cleavage', 'Chym otrypsin', 'Chymotrypsin/P', 'CNBr', 'Formic_acid', 'Lys-C',\
    \ 'Asp-N', 'Lys-N', 'Lys-C/P', 'PepsinA', 'TrypChymo', 'Arg-C')"
  type: boolean
  inputBinding:
    prefix: -peptide
- id: cross_linker
  doc: ":residue1 <list>                     Comma separated residues, that the first\
    \ side of a bifunctional cross-linker can attach to (default: '[K N-term]')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":residue2 <list>                     Comma separated residues, that the second\
    \ side of a bifunctional cross-linker can attach to (default: '[K N-term]')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":mass_light <value>                  Mass of the light cross-linker, linking\
    \ two residues on one or two peptides (default: '138.068079600000004')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":mass_iso_shift <value>              Mass of the isotopic shift between the\
    \ light and heavy linkers (default: '12.075321000000001')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":mass_mono_link <values>             Possible masses of the linker, when attached\
    \ to only one peptide (default: '[156.078644309999987 155.094628714999999]')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":name <text>                         Name of the searched cross-link, used\
    \ to resolve ambiguity of equal masses (e.g. DSS or BS3) (default: 'DSS')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: algorithm
  doc: ":number_top_hits <number>               Number of top hits reported for each\
    \ spectrum pair (default: '5')"
  type: boolean
  inputBinding:
    prefix: -algorithm
- id: out_idxml
  doc: "Results in idXML format (at least one of these output parameters should be\
    \ set, otherwise you will not have any results) (valid formats: 'idXML')"
  type: string
  inputBinding:
    prefix: -out_idXML
- id: out_mz_ident_ml
  doc: "Results in mzIdentML (.mzid) format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results) (valid formats: 'mzid')"
  type: string
  inputBinding:
    prefix: -out_mzIdentML
- id: out_x_quest_xml
  doc: "Results in the xquest.xml format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results). (valid formats: 'xquest.xml\
    \ ')"
  type: string
  inputBinding:
    prefix: -out_xquestxml
- id: out_x_quest_spec_xml
  doc: "Matched spectra in the xQuest .spec.xml format for spectra visualization in\
    \ the xQuest results manager. (valid formats: 'spec.xml')"
  type: string
  inputBinding:
    prefix: -out_xquest_specxml
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
- OpenPepXL
