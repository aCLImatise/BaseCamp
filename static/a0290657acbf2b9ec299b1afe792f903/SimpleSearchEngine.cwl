class: CommandLineTool
id: SimpleSearchEngine.cwl
inputs:
- id: in
  doc: "*                                              Input file  (valid formats:\
    \ 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: database
  doc: "*                                        Input file  (valid formats: 'fasta')"
  type: File
  inputBinding:
    prefix: -database
- id: out
  doc: "*                                             Output file  (valid formats:\
    \ 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: search
  doc: ":enzyme <choice>                                  The enzyme used for peptide\
    \ digestion. (default: 'Trypsin' valid: 'Trypsin', 'Asp-N/B', 'Asp-N_ambic', 'Chymotrypsin',\
    \ 'Chymotrypsin/P', 'CNBr', 'Formi c_acid', 'Lys-C', 'Lys-N', 'Lys-C/P', 'PepsinA',\
    \ 'TrypChymo', 'Trypsin/P', 'V8-DE', 'no cleavage', 'unspecific cleavage', 'Arg-C/P',\
    \ 'Asp-N', '2-iodobe nzoate', 'iodosobenzoate', 'staphylococcal protease/D', 'proline-endopeptidase/HKR',\
    \ 'Arg-C', 'proline endopeptidase', 'glutamyl endopeptidase', 'Alpha -lytic protease',\
    \ 'Glu-C+P', 'PepsinA + P', 'cyanogen-bromide', 'Clostripain/P', 'elastase-trypsin-chymotrypsin',\
    \ 'V8-E', 'leukocyte elastase')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":precursor:mass_tolerance <value>                 Width of precursor mass\
    \ tolerance window (default: '10.0')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":precursor:mass_tolerance_unit <choice>           Unit of precursor mass tolerance.\
    \ (default: 'ppm' valid: 'ppm', 'Da')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":precursor:min_charge <number>                    Minimum precursor charge\
    \ to be considered. (default: '2')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":precursor:max_charge <number>                    Maximum precursor charge\
    \ to be considered. (default: '5')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":precursor:isotopes <numbers>                     Corrects for mono-isotopic\
    \ peak misassignments. (E.g.: 1 = prec. may be misassigned to first isotopic peak)\
    \ (default: '[0 1]')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":fragment:mass_tolerance <value>                  Fragment mass tolerance\
    \ (default: '10.0')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":fragment:mass_tolerance_unit <choice>            Unit of fragment m (default:\
    \ 'ppm' valid: 'ppm', 'Da')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":modifications:fixed <list>                       Fixed modifications, specified\
    \ using UniMod (www.unimod.org) terms, e.g. 'Carbamidomethyl (C)' (default: '[Carbamidomethyl\
    \ (C)]' valid: '15N-oxobutanoi c (N-term C)', '15N-oxobutanoic (Protein N-term\
    \ S)', '15N-oxobutanoic (Protein N-term T)', '2-dimethylsuccinyl (C)', '2-monomethylsuccinyl\
    \ (C)', '2-nit robenzyl (Y)', '2-succinyl (C)', '2HPG (R)', '3-deoxyglucosone\
    \ (R)', '3-phosphoglyceryl (K)', '3sulfo (N-term)', '4-ONE (C)', '4-ONE (H)',\
    \ '4-ONE (K)', '4-ONE+Delta:H(-2)O(-1) (C)', '4-ONE+Delta:H(-2)O(-1) (H)', '4-ONE+Delta:H(-2)O(-1)\
    \ (K)', '4AcAllylGal (C)', 'a-type-ion (C-term)', 'AccQTag (K)', 'AccQTag (N-term)',\
    \ 'Acetyl (C)', 'Acetyl (H)', 'Acetyl (K)', 'Acetyl (N-term)', 'Acetyl (Protein\
    \ N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl (Y)', 'Acetyl:13C(2) (K)', 'Acetyl:13C(2)\
    \ (Protein N-term)', 'Acetyl:2H(3) (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)',\
    \ 'Acetyl:2H(3) (Protein N-term)' , 'Acetyl:2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3)\
    \ (Y)', 'Acetyldeoxyhypusine (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl\
    \ (D)', 'ADP-Ribosyl (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl\
    \ (R)', 'ADP-Ribosyl (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protei\
    \ ... n N-term)', 'Xlink:SMCC (C)', 'Xlink:SSD (K)', 'ZGB (K)', 'ZGB (N-term)')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":modifications:variable <list>                    Variable modifications,\
    \ specified using UniMod (www.unimod.org) terms, e.g. 'Oxidation (M)' (default:\
    \ '[Oxidation (M)]' valid: '15N-oxobutanoic (N-term C)', '15N-oxobutanoic (Protein\
    \ N-term S)', '15N-oxobutanoic (Protein N-term T)', '2-dimethylsuccinyl (C)',\
    \ '2-monomethylsuccinyl (C)', '2-nitrobenzyl (Y)', '2-succinyl (C)', '2HPG (R)',\
    \ '3-deoxyglucosone (R)', '3-phosphoglyceryl (K)', '3sulfo (N-term)', '4-ONE (C)',\
    \ '4-ONE (H)', '4-ONE (K)', '4-ONE+D elta:H(-2)O(-1) (C)', '4-ONE+Delta:H(-2)O(-1)\
    \ (H)', '4-ONE+Delta:H(-2)O(-1) (K)', '4AcAllylGal (C)', 'a-type-ion (C-term)',\
    \ 'AccQTag (K)', 'AccQTag (N-term)', 'Acetyl (C)', 'Acetyl (H)', 'Acetyl (K)',\
    \ 'Acetyl (N-term)', 'Acetyl (Protein N-term)', 'Acetyl (S)', 'Acetyl (T)', 'Acetyl\
    \ (Y)', 'Acetyl:13 C(2) (K)', 'Acetyl:13C(2) (Protein N-term)', 'Acetyl:2H(3)\
    \ (H)', 'Acetyl:2H(3) (K)', 'Acetyl:2H(3) (N-term)', 'Acetyl:2H(3) (Protein N-term)',\
    \ 'Acetyl: 2H(3) (S)', 'Acetyl:2H(3) (T)', 'Acetyl:2H(3) (Y)', 'Acetyldeoxyhypusine\
    \ (K)', 'Acetylhypusine (K)', 'ADP-Ribosyl (C)', 'ADP-Ribosyl (D)', 'ADP-Ribosyl\
    \ (E)', 'ADP-Ribosyl (K)', 'ADP-Ribosyl (N)', 'ADP-Ribosyl (R)', 'ADP-Ribosyl\
    \ (S)', 'ADP-Ribosyl (T)', 'AEBS (H)', 'AEBS (K)', 'AEBS (Protein N-term)', ...\
    \ (C)', 'Xlink:SSD (K)', 'ZGB (K)', 'ZGB (N-term)')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":modifications:variable_max_per_peptide <number>  Maximum number of residues\
    \ carrying a variable modification per candidate peptide (default: '2')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":peptide:min_size <number>                        Minimum size a peptide must\
    \ have after digestion to be considered in the search. (default: '7')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":peptide:max_size <number>                        Maximum size a peptide must\
    \ have after digestion to be considered in the search (0 = disabled). (default:\
    \ '40')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":peptide:missed_cleavages <number>                Number of missed cleavages.\
    \ (default: '1')"
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: :peptide:motif <text>                             If set, only peptides that
    contain this motif (provided as RegEx) will be considered.
  type: boolean
  inputBinding:
    prefix: -Search
- id: search
  doc: ":report:top_hits <number>                         Maximum number of top scoring\
    \ hits per spectrum that are reported. (default: '1')"
  type: boolean
  inputBinding:
    prefix: -Search
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
