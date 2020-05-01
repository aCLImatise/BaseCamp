#!/usr/bin/env cwl-runner

baseCommand:
- SimpleSearchEngine
class: CommandLineTool
cwlVersion: v1.0
id: simplesearchengine
inputs:
- doc: "*                                    Input file  (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                              Input file  (valid formats: 'fasta')"
  id: database
  inputBinding:
    prefix: -database
  type: File
- doc: "*                                   Output file  (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
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
- doc: ":isotopes <num>                      Corrects for mono-isotopic peak misassignments.\
    \ (E.g.: 1 = prec. may be misassigned to first isotopic peak) (default: '[0 1]')"
  id: precursor
  inputBinding:
    prefix: -precursor
  type: boolean
- doc: ":mass_tolerance <tolerance>           Fragment mass tolerance (default: '10')"
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
- doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'PepsinA',\
    \ 'Lys-N', 'Lys-C/P', 'Lys-C', 'Formic_acid', 'Chymotrypsin/P', 'CNBr', 'Trypsin',\
    \  'no cleavage', 'unspecific cleavage', 'Trypsin/P', 'V8-DE', 'TrypChymo', 'proline\
    \ endopeptidase', 'Arg-C/P', 'Asp-N', 'Clostripain/P', 'elastase-trypsin-chymotry\
    \ psin', 'Chymotrypsin', 'Asp-N/B', '2-iodobenzoate', 'iodosobenzoate', 'Arg-C',\
    \ 'V8-E', 'leukocyte elastase', 'glutamyl endopeptidase', 'Alpha-lytic protease',\
    \ 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide', 'Asp-N_ambic', 'staphylococcal\
    \ protease/D', 'proline-endopeptidase/HKR')"
  id: enzyme
  inputBinding:
    prefix: -enzyme
  type: string
- doc: ":missed_cleavages <num>                Number of missed cleavages. (default:\
    \ '1')"
  id: peptide
  inputBinding:
    prefix: -peptide
  type: boolean
- doc: :motif <regex>                         If set, only peptides that contain this
    motif (provided as RegEx) will be considered.
  id: peptide
  inputBinding:
    prefix: -peptide
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
