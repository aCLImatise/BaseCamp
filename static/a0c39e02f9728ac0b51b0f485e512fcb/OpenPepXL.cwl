class: CommandLineTool
id: OpenPepXL.cwl
inputs:
- id: in
  doc: "*                                    Input file containing the spectra. (valid\
    \ formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: consensus
  doc: "*                             Input file containing the linked mass peaks.\
    \ (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -consensus
- id: database
  doc: "*                              Input file containing the protein database.\
    \ (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -database
- id: decoy_string
  doc: "String that was appended (or prefixed - see 'prefix' flag below) to the accessions\
    \ in the protein database to indicate decoy proteins. (default: 'decoy')"
  type: string
  inputBinding:
    prefix: -decoy_string
- id: decoy_prefix
  doc: Set flag, if the decoy_string is a prefix of accessions in the protein database.
    Otherwise it is a suffix.
  type: boolean
  inputBinding:
    prefix: -decoy_prefix
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
  doc: ":corrections <num>                   Monoisotopic peak correction. Matches\
    \ candidates for possible monoisotopic precursor peaks for experimental mass m\
    \ and given numbers n at masses (m - n * (C13-C1 2)). These should be ordered\
    \ from more extreme to less extreme corrections. Numbers later in the list will\
    \ be preferred in case of ambiguities. (default: '[2 1 0]')"
  type: boolean
  inputBinding:
    prefix: -precursor
- id: fragment
  doc: ":mass_tolerance <tolerance>           Fragment mass tolerance (default: '0.2')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: fragment
  doc: ":mass_tolerance_xlinks <tolerance>    Fragment mass tolerance for cross-link\
    \ ions (default: '0.3')"
  type: boolean
  inputBinding:
    prefix: -fragment
- id: fragment
  doc: ":mass_tolerance_unit <unit>           Unit of fragment m (default: 'Da' valid:\
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
- id: peptide
  doc: ":min_size <num>                        Minimum size a peptide must have after\
    \ digestion to be considered in the search. (default: '5')"
  type: boolean
  inputBinding:
    prefix: -peptide
- id: peptide
  doc: ":missed_cleavages <num>                Number of missed cleavages. (default:\
    \ '2')"
  type: boolean
  inputBinding:
    prefix: -peptide
- id: peptide
  doc: ":enzyme <cleavage site>                The enzyme used for peptide digestion.\
    \ (default: 'Trypsin' valid: 'unspecific cleavage', 'Asp-N_ambic', 'V8-E', 'Trypsin/P',\
    \ 'V8-DE', 'TrypChymo', 'PepsinA',  'Lys-N', 'Lys-C/P', 'Trypsin', 'glutamyl endopeptidase',\
    \ 'Alpha-lytic protease', 'Asp-N', 'leukocyte elastase', 'proline endopeptidase',\
    \ 'Asp-N/B', 'staphylococc al protease/D', 'proline-endopeptidase/HKR', 'Glu-C+P',\
    \ 'CNBr', 'Formic_acid', 'Chymotrypsin/P', 'Arg-C', '2-iodobenzoate', 'iodosobenzoate',\
    \ 'Chymotrypsin', 'elastase-trypsin-chymotrypsin', 'no cleavage', 'PepsinA + P',\
    \ 'cyanogen-bromide', 'Clostripain/P', 'Lys-C', 'Arg-C/P')"
  type: boolean
  inputBinding:
    prefix: -peptide
- id: cross_linker
  doc: ":residue1 <one letter code>       Comma separated residues, that the first\
    \ side of a bifunctional cross-linker can attach to (default: '[K N-term]')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":residue2 <one letter code>       Comma separated residues, that the second\
    \ side of a bifunctional cross-linker can attach to (default: '[K N-term]')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":mass_light <mass>                Mass of the light cross-linker, linking\
    \ two residues on one or two peptides (default: '138.0680796')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":mass_iso_shift <mass>            Mass of the isotopic shift between the light\
    \ and heavy linkers (default: '12.075321')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":mass_mono_link <mass>            Possible masses of the linker, when attached\
    \ to only one peptide (default: '[156.07864431 155.094628715]')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: cross_linker
  doc: ":name <string>                    Name of the searched cross-link, used to\
    \ resolve ambiguity of equal masses (e.g. DSS or BS3) (default: 'DSS')"
  type: boolean
  inputBinding:
    prefix: -cross_linker
- id: algorithm
  doc: ":number_top_hits <num>               Number of top hits reported for each\
    \ spectrum pair (default: '5')"
  type: boolean
  inputBinding:
    prefix: -algorithm
- id: out_x_quest_xml
  doc: "Results in the xquest.xml format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results). (valid formats: 'xml',\
    \ 'xquest .xml')"
  type: File
  inputBinding:
    prefix: -out_xquestxml
- id: out_x_quest_spec_xml
  doc: "Matched spectra in the xQuest .spec.xml format for spectra visualization in\
    \ the xQuest results manager. (valid formats: 'xml', 'spec.xml')"
  type: File
  inputBinding:
    prefix: -out_xquest_specxml
- id: out_idxml
  doc: "Results in idXML format (at least one of these output parameters should be\
    \ set, otherwise you will not have any results) (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out_idXML
- id: out_mz_ident_ml
  doc: "Results in mzIdentML (.mzid) format (at least one of these output parameters\
    \ should be set, otherwise you will not have any results) (valid formats: 'mzid')"
  type: File
  inputBinding:
    prefix: -out_mzIdentML
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
