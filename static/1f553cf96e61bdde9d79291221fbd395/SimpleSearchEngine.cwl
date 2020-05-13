class: CommandLineTool
id: SimpleSearchEngine.cwl
inputs:
- id: in
  doc: "*                                    Input file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: database
  doc: "*                              Input file  (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -database
- id: out
  doc: "*                                   Output file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: precursor
  doc: ":mass_tolerance <tolerance>          Width of precursor mass tolerance window\
    \ (default: '10')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":mass_tolerance_unit <unit>          Unit of precursor mass tolerance. (default:\
    \ 'ppm' valid: 'ppm', 'Da')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: precursor
  doc: ":isotopes <num>                      Corrects for mono-isotopic peak misassignments.\
    \ (E.g.: 1 = prec. may be misassigned to first isotopic peak) (default: '[0 1]')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: fragment
  doc: ":mass_tolerance <tolerance>           Fragment mass tolerance (default: '10')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: fragment
  doc: ":mass_tolerance_unit <unit>           Unit of fragment m (default: 'ppm' valid:\
    \ 'ppm', 'Da')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: modifications
  doc: ":fixed <mods>                    Fixed modifications, specified using UniMod\
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
  type: boolean
  inputBinding:
    prefix: -modifications
- id: modifications
  doc: ":variable <mods>                 Variable modifications, specified using UniMod\
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
  type: boolean
  inputBinding:
    prefix: -modifications
- id: modifications
  doc: ":variable_max_per_peptide <num>  Maximum number of residues carrying a variable\
    \ modification per candidate peptide (default: '2')"
  type: boolean
  inputBinding:
    prefix: -modifications
- id: enzyme
  doc: "The enzyme used for peptide digestion. (default: 'Trypsin' valid: 'PepsinA',\
    \ 'Lys-N', 'Lys-C/P', 'Lys-C', 'Formic_acid', 'Chymotrypsin/P', 'CNBr', 'Trypsin',\
    \  'no cleavage', 'unspecific cleavage', 'Trypsin/P', 'V8-DE', 'TrypChymo', 'proline\
    \ endopeptidase', 'Arg-C/P', 'Asp-N', 'Clostripain/P', 'elastase-trypsin-chymotry\
    \ psin', 'Chymotrypsin', 'Asp-N/B', '2-iodobenzoate', 'iodosobenzoate', 'Arg-C',\
    \ 'V8-E', 'leukocyte elastase', 'glutamyl endopeptidase', 'Alpha-lytic protease',\
    \ 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide', 'Asp-N_ambic', 'staphylococcal\
    \ protease/D', 'proline-endopeptidase/HKR')"
  type: string
  inputBinding:
    prefix: -enzyme
- id: peptide
  doc: ":missed_cleavages <num>                Number of missed cleavages. (default:\
    \ '1')"
  type: boolean
  inputBinding:
    prefix: -peptide
- id: peptide
  doc: :motif <regex>                         If set, only peptides that contain this
    motif (provided as RegEx) will be considered.
  type: boolean
  inputBinding:
    prefix: -peptide
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
- SimpleSearchEngine
