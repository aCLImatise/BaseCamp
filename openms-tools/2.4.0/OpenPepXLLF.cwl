#!/usr/bin/env cwl-runner

baseCommand:
- OpenPepXLLF
class: CommandLineTool
cwlVersion: v1.0
id: openpepxllf
inputs:
- doc: "*                                    Input file containing the spectra. (valid\
    \ formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                              Input file containing the protein database.\
    \ (valid formats: 'fasta')"
  id: database
  inputBinding:
    prefix: -database
  type: File
- doc: "String that was appended (or prefixed - see 'prefix' flag below) to the accessions\
    \ in the protein database to indicate decoy proteins. (default: 'decoy')"
  id: decoy_string
  inputBinding:
    prefix: -decoy_string
  type: string
- doc: Set flag, if the decoy_string is a prefix of accessions in the protein database.
    Otherwise it is a suffix.
  id: decoy_prefix
  inputBinding:
    prefix: -decoy_prefix
  type: boolean
- doc: ":mass_tolerance <tolerance>          Width of precursor mass tolerance window\
    \ (default: '10')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mass_tolerance_unit <unit>          Unit of precursor mass tolerance. (default:\
    \ 'ppm' valid: 'ppm', 'Da')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":corrections <num>                   Monoisotopic peak correction. Matches\
    \ candidates for possible monoisotopic precursor peaks for experimental mass m\
    \ and given numbers n at masses (m - n * (C13-C1 2)). These should be ordered\
    \ from more extreme to less extreme corrections. Numbers later in the list will\
    \ be preferred in case of ambiguities. (default: '[2 1 0]')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mass_tolerance <tolerance>           Fragment mass tolerance (default: '20')"
  id: fragment
  inputBinding:
    prefix: -fragment
  type: boolean
- doc: ":mass_tolerance_xlinks <tolerance>    Fragment mass tolerance for cross-link\
    \ ions (default: '20')"
  id: fragment
  inputBinding:
    prefix: -fragment
  type: boolean
- doc: ":mass_tolerance_unit <unit>           Unit of fragment m (default: 'ppm' valid:\
    \ 'ppm', 'Da')"
  id: fragment
  inputBinding:
    prefix: -fragment
  type: boolean
- doc: ":fixed <mods>                    Fixed modifications, specified using UniMod\
    \ (www.unimod.org) terms, e.g. 'Carbamidomethyl (C)' (valid: '15N-oxobutanoic\
    \ (N-term C)', '2-dimethylsuccinyl (C)',  '2-monomethylsuccinyl (C)', '2-nitrobenzyl\
    \ (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl\
    \ (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3)\
    \ (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)', 'Acetyldeoxyhypusine\
    \ (K)', 'Acetylhy pusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC\
    \ (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4) (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne\
    \ (M)', 'AHA-Alkyne-K DDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)',\
    \ 'Ala->Arg (A)', 'Ala->Asn (A)', 'Ala->Asp (A)', 'Ala->Cys (A)', 'Ala->Gln (A)',\
    \ 'Ala->Glu (A)', ... 'Xlink:EGScleaved (K)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)',\
    \ 'ZGB (K)', 'ZGB (N-term)')"
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":variable <mods>                 Variable modifications, specified using UniMod\
    \ (www.unimod.org) terms, e.g. 'Oxidation (M)' (valid: '15N-oxobutanoic (N-term\
    \ C)', '2-dimethylsuccinyl (C)', '2-mo nomethylsuccinyl (C)', '2-nitrobenzyl (Y)',\
    \ '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone (R)', '3-phosphoglyceryl (K)',\
    \ '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)', '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1)\
    \ (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal\
    \ (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)',\
    \ 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:2H( 3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3)\
    \ (N-term)', 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)', 'Acetyldeoxyhypusine\
    \ (K)', 'Acetylhypusine (K)' , 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (S)', 'AEBS (Y)', 'AEC-MAEC\
    \ (S)', 'AEC-MAEC (T)', 'AEC-MAEC:2H(4) (S)', 'AEC-MAEC:2H(4) (T)', 'AHA-Alkyne\
    \ (M)', 'AHA-Alkyne-KDDDD (M)', 'AHA-SS (M)', 'AHA-SS_CAM (M)', 'Ahx2+Hsl (C-term)',\
    \ 'Ala->Arg (A)', 'Ala->Asn (A)', 'Ala->Asp (A)', 'Ala->Cys (A)', 'Ala->Gln (A)',\
    \ 'Ala->Glu (A)', 'Ala->Gly ... (K)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)', 'ZGB\
    \ (K)', 'ZGB (N-term)')"
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":variable_max_per_peptide <num>  Maximum number of residues carrying a variable\
    \ modification per candidate peptide (default: '2')"
  id: modifications
  inputBinding:
    prefix: -modifications
  type: boolean
- doc: ":min_size <num>                        Minimum size a peptide must have after\
    \ digestion to be considered in the search. (default: '5')"
  id: peptide
  inputBinding:
    prefix: -peptide
  type: boolean
- doc: ":missed_cleavages <num>                Number of missed cleavages. (default:\
    \ '2')"
  id: peptide
  inputBinding:
    prefix: -peptide
  type: boolean
- doc: ":enzyme <cleavage site>                The enzyme used for peptide digestion.\
    \ (default: 'Trypsin' valid: 'Trypsin/P', 'PepsinA', 'TrypChymo', 'Lys-C/P', 'Lys-N',\
    \ 'Formic_acid', 'Lys-C', 'Trypsin',  'Alpha-lytic protease', '2-iodobenzoate',\
    \ 'iodosobenzoate', 'Chymotrypsin/P', 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide',\
    \ 'V8-E', 'leukocyte elastase', 'Clostr ipain/P', 'elastase-trypsin-chymotrypsin',\
    \ 'Chymotrypsin', 'Arg-C', 'Asp-N_ambic', 'proline endopeptidase', 'glutamyl endopeptidase',\
    \ 'staphylococcal protease/D' , 'proline-endopeptidase/HKR', 'Asp-N/B', 'Arg-C/P',\
    \ 'V8-DE', 'no cleavage', 'unspecific cleavage', 'CNBr', 'Asp-N')"
  id: peptide
  inputBinding:
    prefix: -peptide
  type: boolean
- doc: ":residue1 <one letter code>       Comma separated residues, that the first\
    \ side of a bifunctional cross-linker can attach to (default: '[K N-term]')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: ":residue2 <one letter code>       Comma separated residues, that the second\
    \ side of a bifunctional cross-linker can attach to (default: '[K N-term]')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: ":mass <mass>                      Mass of the light cross-linker, linking\
    \ two residues on one or two peptides (default: '138.0680796')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: ":mass_mono_link <mass>            Possible masses of the linker, when attached\
    \ to only one peptide (default: '[156.07864431 155.094628715]')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: ":name <string>                    Name of the searched cross-link, used to\
    \ resolve ambiguity of equal masses (e.g. DSS or BS3) (default: 'DSS')"
  id: cross_linker
  inputBinding:
    prefix: -cross_linker
  type: boolean
- doc: :pre_scoring                         Set flag, to use the pre-scoring heuristic.
    Otherwise a full enumeration will be performed.
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":number_of_scored_candidates <num>   Number of candidates that are scored\
    \ using the full scoring function after ranking by a faster pre-scoring function.\
    \ (default: '10000')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: ":number_top_hits <num>               Number of top hits reported for each\
    \ spectrum pair (default: '5')"
  id: algorithm
  inputBinding:
    prefix: -algorithm
  type: boolean
- doc: "Results in the xquest.xml format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results). (valid formats: 'xml',\
    \ 'xquest .xml')"
  id: out_x_quest_xml
  inputBinding:
    prefix: -out_xquestxml
  type: File
- doc: "Matched spectra in the xQuest .spec.xml format for spectra visualization in\
    \ the xQuest results manager. (valid formats: 'xml', 'spec.xml')"
  id: out_x_quest_spec_xml
  inputBinding:
    prefix: -out_xquest_specxml
  type: File
- doc: "Results in idXML format (at least one of these output parameters should be\
    \ set, otherwise you will not have any results). (valid formats: 'idXML')"
  id: out_idxml
  inputBinding:
    prefix: -out_idXML
  type: File
- doc: "Results in mzIdentML (.mzid) format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results) (valid formats: 'mzid')"
  id: out_mz_ident_ml
  inputBinding:
    prefix: -out_mzIdentML
  type: File
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
