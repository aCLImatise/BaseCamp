#!/usr/bin/env cwl-runner

baseCommand:
- OpenPepXLLF
class: CommandLineTool
cwlVersion: v1.0
id: openpepxllf
inputs:
- doc: "*                                       Input file containing the spectra.\
    \ (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                                 Input file containing the protein database.\
    \ (valid formats: 'fasta')"
  id: database
  inputBinding:
    prefix: -database
  type: File
- doc: "String that was appended (or prefixed - see 'prefix' flag below) to the accessions\
    \ in the protein database to indicate decoy proteins. (default: 'DECOY_')"
  id: decoy_string
  inputBinding:
    prefix: -decoy_string
  type: string
- doc: "Set to true, if the decoy_string is a prefix of accessions in the protein\
    \ database. Otherwise it is a suffix. (default: 'true' valid: 'true', 'false')"
  id: decoy_prefix
  inputBinding:
    prefix: -decoy_prefix
  type: string
- doc: ":mass_tolerance <value>                 Width of precursor mass tolerance\
    \ window (default: '10.0')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mass_tolerance_unit <choice>           Unit of precursor mass tolerance.\
    \ (default: 'ppm' valid: 'ppm', 'Da')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":min_charge <number>                    Minimum precursor charge to be considered.\
    \ (default: '3')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":max_charge <number>                    Maximum precursor charge to be considered.\
    \ (default: '7')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":corrections <numbers>                  Monoisotopic peak correction. Matches\
    \ candidates for possible monoisotopic precursor peaks for experimental mass m\
    \ and given numbers n at masses (m - n * (C13 -C12)). These should be ordered\
    \ from more extreme to less extreme corrections. Numbers later in the list will\
    \ be preferred in case of ambiguities. (default: '[2 1 0]')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mass_tolerance <value>                  Fragment mass tolerance (default:\
    \ '20.0')"
  id: fragment
  inputBinding:
    prefix: -fragment
  type: boolean
- doc: ":mass_tolerance_xlinks <value>           Fragment mass tolerance for cross-link\
    \ ions (default: '20.0')"
  id: fragment
  inputBinding:
    prefix: -fragment
  type: boolean
- doc: ":mass_tolerance_unit <choice>            Unit of fragment m (default: 'ppm'\
    \ valid: 'ppm', 'Da')"
  id: fragment
  inputBinding:
    prefix: -fragment
  type: boolean
- doc: ":fixed <list>                       Fixed modifications, specified using UniMod\
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
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":variable <list>                    Variable modifications, specified using\
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
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":variable_max_per_peptide <number>  Maximum number of residues carrying a\
    \ variable modification per candidate peptide (default: '2')"
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":min_size <number>                        Minimum size a peptide must have\
    \ after digestion to be considered in the search. (default: '5')"
  id: peptide
  inputBinding:
    prefix: -peptide
  type: boolean
- doc: ":missed_cleavages <number>                Number of missed cleavages. (default:\
    \ '2')"
  id: peptide
  inputBinding:
    prefix: -peptide
  type: boolean
- doc: ":enzyme <choice>                          The enzyme used for peptide digestion.\
    \ (default: 'Trypsin' valid: 'Trypsin', 'proline endopeptidase', 'glutamyl endopeptidase',\
    \ 'Alpha-lytic protease', '2-iod obenzoate', 'Asp-N/B', 'Asp-N_ambic', 'Trypsin/P',\
    \ 'V8-DE', 'V8-E', 'leukocyte elastase', 'Arg-C/P', 'iodosobenzoate', 'staphylococcal\
    \ protease/D', 'proline-e ndopeptidase/HKR', 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide',\
    \ 'Clostripain/P', 'elastase-trypsin-chymotrypsin', 'no cleavage', 'unspecific\
    \ cleavage', 'Chym otrypsin', 'Chymotrypsin/P', 'CNBr', 'Formic_acid', 'Lys-C',\
    \ 'Asp-N', 'Lys-N', 'Lys-C/P', 'PepsinA', 'TrypChymo', 'Arg-C')"
  id: peptide
  inputBinding:
    prefix: -peptide
  type: boolean
- doc: ":residue1 <list>                     Comma separated residues, that the first\
    \ side of a bifunctional cross-linker can attach to (default: '[K N-term]')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: ":residue2 <list>                     Comma separated residues, that the second\
    \ side of a bifunctional cross-linker can attach to (default: '[K N-term]')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: ":mass <value>                        Mass of the light cross-linker, linking\
    \ two residues on one or two peptides (default: '138.068079600000004')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: ":mass_mono_link <values>             Possible masses of the linker, when attached\
    \ to only one peptide (default: '[156.078644309999987 155.094628714999999]')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: ":name <text>                         Name of the searched cross-link, used\
    \ to resolve ambiguity of equal masses (e.g. DSS or BS3) (default: 'DSS')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: ":number_top_hits <number>               Number of top hits reported for each\
    \ spectrum pair (default: '5')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: :use_sequence_tags                      Use sequence tags (de novo sequencing
    of short fragments) to filter out candidates before scoring. This will make the
    search faster, but can impact the sensit ivity positively or negatively, depending
    on the dataset.
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: "Results in idXML format (at least one of these output parameters should be\
    \ set, otherwise you will not have any results). (valid formats: 'idXML')"
  id: out_idxml
  inputBinding:
    prefix: -out_idXML
  type: string
- doc: "Results in mzIdentML (.mzid) format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results) (valid formats: 'mzid')"
  id: out_mz_ident_ml
  inputBinding:
    prefix: -out_mzIdentML
  type: string
- doc: "Results in the xquest.xml format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results). (valid formats: 'xquest.xml\
    \ ')"
  id: out_x_quest_xml
  inputBinding:
    prefix: -out_xquestxml
  type: string
- doc: "Matched spectra in the xQuest .spec.xml format for spectra visualization in\
    \ the xQuest results manager. (valid formats: 'spec.xml')"
  id: out_x_quest_spec_xml
  inputBinding:
    prefix: -out_xquest_specxml
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
